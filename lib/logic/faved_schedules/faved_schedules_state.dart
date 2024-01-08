part of 'faved_schedules_cubit.dart';

@freezed
class FavedSchedulesState with _$FavedSchedulesState {
  @HiveType(
    typeId: HiveTypeIds.favedSchedulesState,
    adapterName: "FavedSchedulesStateAdapter",
  )
  factory FavedSchedulesState({
    @Default([]) @HiveField(0) List<ScheduleKey> favedSchedules,
    @Default(null) @HiveField(1) ScheduleKey? selectedSchedule,
  }) = _FavedSchedulesState;
  FavedSchedulesState._();
}
