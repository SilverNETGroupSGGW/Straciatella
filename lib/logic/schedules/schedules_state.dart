part of 'schedules_cubit.dart';

@freezed
class SchedulesState with _$SchedulesState {
  const factory SchedulesState.initial() = _Initial;
  const factory SchedulesState.loading() = _Loading; // From storage
  const factory SchedulesState.updating(List<Schedule> schedules) =
      _Updating; // Loaded and updating from API
  const factory SchedulesState.done(
    List<Schedule> schedules, {
    required bool isOffline,
  }) = _Done;
}
