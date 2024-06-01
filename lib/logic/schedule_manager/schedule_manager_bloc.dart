import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/options_tree/lecturer_tree.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/data/models/options_tree/study_program_tree.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/data/types.dart';

part 'schedule_manager_event.dart';
part 'schedule_manager_state.dart';
part 'schedule_manager_bloc.freezed.dart';
part 'schedule_manager_bloc.g.dart';

class ScheduleManagerBloc
    extends Bloc<ScheduleManagerEvent, ScheduleManagerState> {
  static const boxKeyPrefix = "schedule_manager";
  late final SggwHubRepo _sggwHubRepo;
  final Box box = Hive.box(hiveBoxName);
  final String orgId;

  String get boxKey => "$boxKeyPrefix/$orgId";

  @override
  void onChange(Change<ScheduleManagerState> change) {
    super.onChange(change);
    if (change.currentState.cachedLecturers !=
            change.nextState.cachedLecturers ||
        change.currentState.cachedStudyPrograms !=
            change.nextState.cachedStudyPrograms) {
      box.put(boxKey, change.nextState);
    }
  }

  ScheduleManagerBloc(this.orgId) : super(ScheduleManagerState()) {
    _sggwHubRepo = GetIt.instance.get<SggwHubRepo>();

    on<_Init>((event, emit) {
      try {
        final ScheduleManagerState? loadedState =
            box.get(boxKey) as ScheduleManagerState?;
        if (loadedState != null) {
          emit(
            loadedState.copyWith(
              studyProgramsOptionsTree: createStudyProgramOptionsTree(
                loadedState.studyProgramsIndex.values,
              ),
              lecturersOptionsTree:
                  createLecturerOptionsTree(loadedState.lecturersIndex.values),
            ),
          );
        }
      } catch (e) {
        if (kDebugMode) {
          print("Could not load schedule manager state");
        }
        // TODO: handle exception
      }
    });
    // * setters
    on<_SetIndex>(
      (event, emit) => setIndex(event.studyPrograms, event.lecturers, emit),
    );

    on<_CacheStudyProgram>(
      (event, emit) => setStudyProgram(event.studyProgram, emit),
    );

    on<_CacheLecturer>((event, emit) => setLecturer(event.lecturer, emit));

    on<_RemoveSchedule>((event, emit) => removeSchedule(event.schedule, emit));

    on<_Clear>((event, emit) {
      emit(ScheduleManagerState());
    });

    // * fetchers
    on<_UpdateIndex>(
      (event, emit) async {
        // TODO: move this if block to transformer
        if (state.refreshingIndex) {
          // already fetching newest data for this schedule
          return;
        }

        flagLoadingScheduleIndex(emit);
        try {
          final List<StudyProgramBase> studyPrograms =
              await _sggwHubRepo.getStudyPrograms(orgId);
          final List<LecturerBase> lecturers =
              await _sggwHubRepo.getLecturers(orgId);
          if (emit.isDone) {
            unflagLoadingScheduleIndex(emit);
            return;
          }
          emit(
            state.copyWith(
              refreshingIndex: false,
              studyProgramsIndex: {for (final v in studyPrograms) v.id: v},
              lecturersIndex: {for (final v in lecturers) v.id: v},
              studyProgramsOptionsTree:
                  createStudyProgramOptionsTree(studyPrograms),
              lecturersOptionsTree: createLecturerOptionsTree(lecturers),
            ),
          );
        } catch (ex) {
          if (kDebugMode) {
            print("Could not get schedules index");
            print(ex);
          }
          unflagLoadingScheduleIndex(emit);
        }
      },
      transformer: restartable(),
    );

    on<_UpdateStudyProgram>(
      (event, emit) async {
        final ScheduleKey key = (type: ScheduleType.studyProgram, id: event.id);
        // TODO: move this if block to transformer
        if (state.refreshing.contains(key)) {
          // already fetching newest data for this schedule
          return;
        }

        flagLoadingSchedule(emit, key);
        try {
          final StudyProgramExt schedule =
              await _sggwHubRepo.getStudyProgram(event.id);
          if (emit.isDone) {
            unflagLoadingSchedule(emit, key);
            return;
          }
          emit(
            state.copyWith(
              cachedStudyPrograms: Map.from(state.cachedStudyPrograms)
                ..update(
                  schedule.id,
                  (value) => schedule,
                  ifAbsent: () => schedule,
                ),
              refreshing: Set.from(state.refreshing)..remove(key),
            ),
          );
        } catch (ex) {
          if (kDebugMode) {
            print("Could not get Schedule ${event.id}");
            print(ex);
          }
          unflagLoadingSchedule(emit, key);
        }
      },
      transformer: restartable(),
    );

    on<_UpdateLecturer>(
      (event, emit) async {
        final ScheduleKey key = (type: ScheduleType.lecturer, id: event.id);
        // TODO: move this if block to transformer
        if (state.refreshing.contains(key)) {
          // already fetching newest data for this schedule
          return;
        }

        flagLoadingSchedule(emit, key);
        try {
          final LecturerExt lecturer = await _sggwHubRepo.getLecturer(event.id);
          if (emit.isDone) {
            unflagLoadingSchedule(emit, key);
            return;
          }
          emit(
            state.copyWith(
              cachedLecturers: Map.from(state.cachedLecturers)
                ..update(
                  lecturer.id,
                  (value) => lecturer,
                  ifAbsent: () => lecturer,
                ),
              refreshing: Set.from(state.refreshing)..remove(key),
            ),
          );
        } catch (ex) {
          if (kDebugMode) {
            print("Could not get Lecturer ${event.id}");
            print(ex);
          }
          unflagLoadingSchedule(emit, key);
        }
      },
      transformer: restartable(),
    );
  }

  void removeSchedule(
    ScheduleKey schedule,
    Emitter<ScheduleManagerState> emit,
  ) {
    if (schedule.type == ScheduleType.lecturer) {
      emit(
        state.copyWith(
          cachedLecturers: Map.from(state.cachedLecturers)..remove(schedule.id),
          refreshing: Set.from(state.refreshing)..remove(schedule),
        ),
      );
    } else if (schedule.type == ScheduleType.studyProgram) {
      emit(
        state.copyWith(
          cachedStudyPrograms: Map.from(state.cachedStudyPrograms)
            ..remove(schedule.id),
          refreshing: Set.from(state.refreshing)..remove(schedule),
        ),
      );
    }
  }

  void flagLoadingSchedule(
    Emitter<ScheduleManagerState> emit,
    ScheduleKey key,
  ) {
    emit(
      state.copyWith(
        refreshing: Set.from(state.refreshing)..add(key),
      ),
    );
  }

  void unflagLoadingSchedule(
    Emitter<ScheduleManagerState> emit,
    ScheduleKey key,
  ) {
    emit(
      state.copyWith(
        refreshing: Set.from(state.refreshing)..remove(key),
      ),
    );
  }

  void flagLoadingScheduleIndex(Emitter<ScheduleManagerState> emit) {
    emit(
      state.copyWith(
        refreshingIndex: true,
      ),
    );
  }

  void unflagLoadingScheduleIndex(Emitter<ScheduleManagerState> emit) {
    emit(
      state.copyWith(
        refreshingIndex: false,
      ),
    );
  }

  FutureOr<void> setIndex(
    List<StudyProgramBase> studyPrograms,
    List<LecturerBase> lecturers,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      state.copyWith(
        studyProgramsIndex: {for (final v in studyPrograms) v.id: v},
        lecturersIndex: {for (final v in lecturers) v.id: v},
        studyProgramsOptionsTree: createStudyProgramOptionsTree(studyPrograms),
        lecturersOptionsTree: createLecturerOptionsTree(lecturers),
      ),
    );
  }

  FutureOr<void> setStudyProgram(
    StudyProgramExt studyProgram,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      state.copyWith(
        cachedStudyPrograms: Map.from(state.cachedStudyPrograms)
          ..update(
            studyProgram.id,
            (value) => studyProgram,
            ifAbsent: () => studyProgram,
          ),
      ),
    );
  }

  FutureOr<void> setLecturer(
    LecturerExt lecturer,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      state.copyWith(
        cachedLecturers: Map.from(state.cachedLecturers)
          ..update(
            lecturer.id,
            (value) => lecturer,
            ifAbsent: () => lecturer,
          ),
      ),
    );
  }
}
