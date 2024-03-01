import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/options_tree/lecturers_tree.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/data/models/options_tree/schedules_tree.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/data/types.dart';

part 'schedule_manager_event.dart';
part 'schedule_manager_state.dart';
part 'schedule_manager_bloc.freezed.dart';
part 'schedule_manager_bloc.g.dart';

class ScheduleManagerBloc
    extends Bloc<ScheduleManagerEvent, ScheduleManagerState> {
  static const boxKey = "schedule_manager";
  late final SggwHubRepo _sggwHubRepo;
  final Box box = Hive.box(hiveBoxName);

  @override
  void onChange(Change<ScheduleManagerState> change) {
    super.onChange(change);
    if (change.currentState.schedules != change.nextState.schedules) {
      box.put(boxKey, change.nextState.asHivable());
    }
  }

  ScheduleManagerBloc() : super(ScheduleManagerState()) {
    _sggwHubRepo = GetIt.instance.get<SggwHubRepo>();

    on<_Init>((event, emit) {
      try {
        final ScheduleManagerHiveState? loadedState =
            box.get(boxKey) as ScheduleManagerHiveState?;
        if (loadedState != null) {
          var s = loadedState.asNormalState();
          if (kDebugMode) {
            s = s.copyWith(
              schedules: {
                ...s.schedules,
                if (kDebugMode) ...{
                  (
                    id: mockSchedule["id"]! as String,
                    type: ScheduleType.schedule
                  ): Schedule.fromJson(mockSchedule),
                  (
                    id: mockLecturer["id"]! as String,
                    type: ScheduleType.lecturer
                  ): Lecturer.fromJson(mockLecturer),
                },
              },
            );
          }
          emit(s);
        } else {
          emit(
            ScheduleManagerState(
              schedules: {
                if (kDebugMode) ...{
                  (
                    id: mockSchedule["id"]! as String,
                    type: ScheduleType.schedule
                  ): Schedule.fromJson(mockSchedule),
                  (
                    id: mockLecturer["id"]! as String,
                    type: ScheduleType.lecturer
                  ): Lecturer.fromJson(mockLecturer),
                },
              },
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
    on<_SetIndex>((event, emit) => setIndex(event.index, emit));

    on<_SetSchedule>((event, emit) => setSchedule(event.schedule, emit));

    on<_SetLecturer>((event, emit) => setLecturer(event.lecturer, emit));

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
          final Map<ScheduleKey, BaseSchedule> index =
              await _sggwHubRepo.getSchedulesIndex().then(
                    (value) => Map.fromIterable(
                      value,
                      key: (e) {
                        if (e is LecturerBase) {
                          return (type: ScheduleType.lecturer, id: e.id);
                        }
                        return (
                          type: ScheduleType.schedule,
                          id: (e as ScheduleBase).id
                        );
                      },
                      value: (e) => e as BaseSchedule,
                    ),
                  );
          if (emit.isDone) {
            unflagLoadingScheduleIndex(emit);
            return;
          }
          emit(
            state.copyWith(
              schedulesIndex: index,
              refreshingIndex: false,
              lecturersOptionsTree: createLecturerOptionsTree(
                index.values.whereType<LecturerBase>(),
              ),
              schedulesOptionsTree: createScheduleOptionsTree(
                index.values.whereType<ScheduleBase>(),
              ),
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

    on<_UpdateSchedule>(
      (event, emit) async {
        final ScheduleKey key = (type: ScheduleType.schedule, id: event.id);
        // TODO: move this if block to transformer
        if (state.refreshing.contains(key)) {
          // already fetching newest data for this schedule
          return;
        }

        flagLoadingSchedule(emit, key);
        try {
          final Schedule schedule = await _sggwHubRepo.getSchedule(event.id);
          if (emit.isDone) {
            unflagLoadingSchedule(emit, key);
            return;
          }
          emit(
            state.copyWith(
              schedules: Map.from(state.schedules)
                ..update(
                  (type: ScheduleType.schedule, id: schedule.id),
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
          final Lecturer lecturer = await _sggwHubRepo.getLecturer(event.id);
          if (emit.isDone) {
            unflagLoadingSchedule(emit, key);
            return;
          }
          emit(
            state.copyWith(
              schedules: Map.from(state.schedules)
                ..update(
                  (type: ScheduleType.lecturer, id: lecturer.id),
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
    emit(
      state.copyWith(
        schedules: Map.from(state.schedules)..remove(schedule),
        refreshing: Set.from(state.refreshing)..remove(schedule),
      ),
    );
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
    BaseScheduleCacheMap index,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      state.copyWith(
        schedulesIndex: index,
        lecturersOptionsTree: createLecturerOptionsTree(
          index.values.whereType<LecturerBase>(),
        ),
        schedulesOptionsTree: createScheduleOptionsTree(
          index.values.whereType<ScheduleBase>(),
        ),
      ),
    );
  }

  FutureOr<void> setSchedule(
    Schedule schedule,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      state.copyWith(
        schedules: Map.from(state.schedules)
          ..update(
            (type: ScheduleType.schedule, id: schedule.id),
            (value) => schedule,
            ifAbsent: () => schedule,
          ),
      ),
    );
  }

  FutureOr<void> setLecturer(
    Lecturer lecturer,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      state.copyWith(
        schedules: Map.from(state.schedules)
          ..update(
            (type: ScheduleType.lecturer, id: lecturer.id),
            (value) => lecturer,
            ifAbsent: () => lecturer,
          ),
      ),
    );
  }
}
