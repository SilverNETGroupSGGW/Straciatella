part of 'schedule_manager_bloc.dart';

@freezed
class ScheduleManagerState extends HiveObject with _$ScheduleManagerState {
  @HiveType(
    typeId: HiveTypeIds.scheduleManagerLoadedState,
    adapterName: "ScheduleManagerStateLoadedAdapter",
  )
  factory ScheduleManagerState.loaded({
    @Default({})
    @HiveField(0, defaultValue: {})
    Map<ScheduleKey, ExtendedSchedule> schedules,
  }) = _Loaded;

  // this one cant be saved with hive, must be mapped to loaded state
  factory ScheduleManagerState.loading({
    @Default({}) Set<ScheduleKey> loading,
  }) = _Loading;
  ScheduleManagerState._();
}
