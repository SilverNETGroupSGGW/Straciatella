import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/mixins.dart';
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
  static const _boxKey = "schedule_manager";
  final SggwHubRepo sggwHubRepo = SggwHubRepo();
  final Box box = Hive.box(hiveBoxName);

  _Loaded lastLoaded = _Loaded();
  _Loading lastLoading = _Loading();

  @override
  void onChange(Change<ScheduleManagerState> change) {
    super.onChange(change);
    if (change.nextState is _Loading) {
      lastLoading = change.nextState as _Loading;
    }
    if (change.nextState is _Loaded) {
      lastLoaded = change.nextState as _Loaded;
      box.put(_boxKey, lastLoaded);
    }
  }

  ScheduleManagerBloc() : super(_Loaded()) {
    on<_Init>((event, emit) {
      try {
        final _Loaded? loadedState = box.get(_boxKey) as _Loaded?;
        if (loadedState != null) emit(loadedState);
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

    // * fetchers
    on<_UpdateIndex>(
      (event, emit) async {
        flagLoadingIndex(emit);
        try {
          final List<BaseSchedule> schedules = await Future.wait([
            sggwHubRepo.getSchedules(),
            sggwHubRepo.getLecturers(),
          ]).then((value) => [...value[0], ...value[1]]);
          setIndex(schedules, emit);
        } catch (ex) {
          if (kDebugMode) {
            print("Could not get index of schedules");
            print(ex);
          }
        }
        unflagLoadingIndex(emit);
      },
      transformer: droppable(),
    );

    on<_UpdateSchedule>(
      (event, emit) async {
        final ScheduleKey key = (Schedule, event.id);
        // TODO: move this if block to transformer
        if (state is _Loading && (state as _Loading).loading.contains(key)) {
          // already fetching newest data for this schedule
          return;
        }

        flagLoadingSchedule(emit, key);
        try {
          final Schedule schedule = await sggwHubRepo.getSchedule(event.id);
          setSchedule(schedule, emit);
        } catch (ex) {
          if (kDebugMode) {
            print("Could not get Schedule ${event.id}");
            print(ex);
          }
        }
        unflagLoadingSchedule(emit, key);
      },
    );

    on<_UpdateLecturer>(
      (event, emit) async {
        final ScheduleKey key = (Lecturer, event.id);
        // TODO: move this if block to transformer
        if (state is _Loading && (state as _Loading).loading.contains(key)) {
          // already fetching newest data for this schedule
          return;
        }

        flagLoadingSchedule(emit, key);
        try {
          final Lecturer lecturer = await sggwHubRepo.getLecturer(event.id);
          setLecturer(lecturer, emit);
        } catch (ex) {
          if (kDebugMode) {
            print("Could not get Lecturer ${event.id}");
            print(ex);
          }
        }
        unflagLoadingSchedule(emit, key);
      },
    );
  }

  void unflagLoadingIndex(Emitter<ScheduleManagerState> emit) {
    emit(
      lastLoading.copyWith(
        all: false,
      ),
    );
  }

  void flagLoadingIndex(Emitter<ScheduleManagerState> emit) {
    emit(
      lastLoading.copyWith(
        all: true,
      ),
    );
  }

  void flagLoadingSchedule(
    Emitter<ScheduleManagerState> emit,
    ScheduleKey key,
  ) {
    emit(
      lastLoading.copyWith(
        loading: Set.from(lastLoading.loading)..add(key),
      ),
    );
  }

  void unflagLoadingSchedule(
    Emitter<ScheduleManagerState> emit,
    ScheduleKey key,
  ) {
    emit(
      lastLoading.copyWith(
        loading: Set.from(lastLoading.loading)..remove(key),
      ),
    );
  }

  FutureOr<void> setIndex(
    List<BaseSchedule> index,
    Emitter<ScheduleManagerState> emit,
  ) {
    final Map<(Type, String), BaseSchedule> nextIndex = {};

    for (final element in index) {
      if (element is LecturerBase) {
        nextIndex[(LecturerBase, element.id)] = element;
        continue;
      }

      if (element is ScheduleBase) {
        nextIndex[(ScheduleBase, element.id)] = element;
      }
    }

    emit(
      lastLoaded.copyWith(
        schedulesIndex: nextIndex,
      ),
    );
  }

  FutureOr<void> setSchedule(
    Schedule schedule,
    Emitter<ScheduleManagerState> emit,
  ) {
    emit(
      lastLoaded.copyWith(
        schedules: Map.from(lastLoaded.schedules)
          ..update(
            (Schedule, schedule.id),
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
      lastLoaded.copyWith(
        schedules: Map.from(lastLoaded.schedules)
          ..update(
            (Lecturer, lecturer.id),
            (value) => lecturer,
            ifAbsent: () => lecturer,
          ),
      ),
    );
  }
}
