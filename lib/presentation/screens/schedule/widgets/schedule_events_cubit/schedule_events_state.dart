part of 'schedule_events_cubit.dart';

@freezed
class ScheduleEventsState with _$ScheduleEventsState {
  const factory ScheduleEventsState.initial() = _Initial;
  const factory ScheduleEventsState.loading({
    required Map<DateTime, List<ScheduleEvent>> events,
    required ExtendedSchedule fromSchedule,
    required bool isFromCache,
  }) = _Loading;
  const factory ScheduleEventsState.loaded({
    required Map<DateTime, List<ScheduleEvent>> events,
    required ExtendedSchedule fromSchedule,
    required bool isFromCache,
  }) = _Loaded;
}
