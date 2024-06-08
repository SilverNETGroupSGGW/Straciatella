part of 'schedule_events_cubit.dart';

@freezed
class ScheduleEventsState with _$ScheduleEventsState {
  const factory ScheduleEventsState({
    WithLessonsData? schedule,
    @Default(false) bool isFromCache,
    @Default(false) bool isLoading,
    Object? error,
    required ScheduleKey key,
  }) = _ScheduleEventsState;
  const ScheduleEventsState._();

  bool get hasError => error != null;
}
