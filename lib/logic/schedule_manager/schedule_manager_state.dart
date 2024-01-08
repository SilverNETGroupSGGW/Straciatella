part of 'schedule_manager_bloc.dart';

typedef ScheduleCacheMap = Map<ScheduleKey, ExtendedSchedule>;

@freezed
class ScheduleManagerState with _$ScheduleManagerState {
  factory ScheduleManagerState({
    @Default({}) ScheduleCacheMap schedules,
    @Default({}) Set<ScheduleKey> refreshing,
  }) = _ScheduleManagerState;
}
