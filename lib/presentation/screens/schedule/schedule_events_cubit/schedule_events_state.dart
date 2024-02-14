part of 'schedule_events_cubit.dart';

@freezed
class ScheduleEventsState with _$ScheduleEventsState {
  const factory ScheduleEventsState({
    @Default({}) Map<DateTime, List<ScheduleEvent>> events,
    ExtendedSchedule? fromSchedule,
    @Default(false) bool isFromCache,
    @Default(false) bool isLoading,
    Object? error,
  }) = _ScheduleEventsState;
  const ScheduleEventsState._();

  bool get hasError => error != null;
}
