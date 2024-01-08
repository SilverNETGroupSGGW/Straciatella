part of 'schedule_manager_bloc.dart';

typedef ScheduleCacheMap = Map<ScheduleKey, ExtendedSchedule>;

@freezed
class ScheduleManagerState with _$ScheduleManagerState {
  factory ScheduleManagerState({
    @Default({}) ScheduleCacheMap schedules,
    @Default({}) Set<ScheduleKey> refreshing,
  }) = _ScheduleManagerState;
  ScheduleManagerState._();

  ScheduleManagerHiveState asHivable() {
    return ScheduleManagerHiveState(
      schedules: schedules,
    );
  }
}

@freezed
class ScheduleManagerHiveState with _$ScheduleManagerHiveState {
  @HiveType(
    typeId: HiveTypeIds.scheduleManagerHiveState,
    adapterName: "ScheduleManagerHiveStateAdapter",
  )
  factory ScheduleManagerHiveState({
    @Default({}) @HiveField(0, defaultValue: {}) ScheduleCacheMap schedules,
  }) = _ScheduleManagerHiveState;
  ScheduleManagerHiveState._();

  ScheduleManagerState asNormalState() {
    return ScheduleManagerState(
      schedules: schedules,
    );
  }
}
