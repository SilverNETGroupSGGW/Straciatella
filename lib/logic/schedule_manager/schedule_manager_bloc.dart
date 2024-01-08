import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
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

  ScheduleManagerBloc([SggwHubRepo? sggwHubRepo])
      : super(ScheduleManagerState()) {
    _sggwHubRepo = sggwHubRepo ?? SggwHubRepo();

    on<_Init>((event, emit) {
      try {
        final ScheduleManagerHiveState? loadedState =
            box.get(boxKey) as ScheduleManagerHiveState?;
        if (loadedState != null) {
          emit(loadedState.asNormalState());
        }
      } catch (e) {
        if (kDebugMode) {
          print("Could not load schedule manager state");
        }
        // TODO: handle exception
      }
    });
    // * setters
    on<_SetSchedule>((event, emit) => setSchedule(event.schedule, emit));

    on<_SetLecturer>((event, emit) => setLecturer(event.lecturer, emit));

    on<_RemoveSchedule>((event, emit) => removeSchedule(event.schedule, emit));

    on<_Clear>((event, emit) {
      emit(ScheduleManagerState());
    });

    // * fetchers
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
