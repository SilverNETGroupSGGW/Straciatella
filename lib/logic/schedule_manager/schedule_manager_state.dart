part of 'schedule_manager_bloc.dart';

typedef ExtendedScheduleCacheMap = Map<ScheduleKey, ExtendedSchedule>;
typedef BaseScheduleCacheMap = Map<ScheduleKey, BaseSchedule>;

@freezed
class ScheduleManagerState with _$ScheduleManagerState {
  factory ScheduleManagerState({
    @Default({}) ExtendedScheduleCacheMap schedules,
    @Default({}) BaseScheduleCacheMap schedulesIndex,
    @Default(false) bool refreshingIndex,
    @Default({}) Set<ScheduleKey> refreshing,
    OptionsTreeNode? schedulesOptionsTree,
    OptionsTreeNode? lecturersOptionsTree,
  }) = _ScheduleManagerState;
  ScheduleManagerState._();

  ScheduleManagerHiveState asHivable() {
    return ScheduleManagerHiveState(
      schedules: schedules,
      schedulesIndex: schedulesIndex,
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
    @Default({})
    @HiveField(0, defaultValue: {})
    ExtendedScheduleCacheMap schedules,
    @Default({})
    @HiveField(1, defaultValue: {})
    BaseScheduleCacheMap schedulesIndex,
  }) = _ScheduleManagerHiveState;
  ScheduleManagerHiveState._();

  ScheduleManagerState asNormalState() {
    return ScheduleManagerState(
      schedules: schedules,
      schedulesIndex: schedulesIndex,
      lecturersOptionsTree: createLecturerOptionsTree(
        schedulesIndex.values.whereType<LecturerBase>(),
      ),
      schedulesOptionsTree: createScheduleOptionsTree(
        schedulesIndex.values.whereType<ScheduleBase>(),
      ),
    );
  }
}
