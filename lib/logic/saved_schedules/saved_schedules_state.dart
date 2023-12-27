part of 'saved_schedules_cubit.dart';

@freezed
class SavedSchedulesState with _$SavedSchedulesState {
  SavedSchedulesState._();

  @HiveType(
    typeId: HiveTypeIds.savedSchedulesState,
    adapterName: "SavedSchedulesStateAdapter",
  )
  factory SavedSchedulesState({
    @Default([]) @HiveField(0) List<Schedule> savedSchedules,
    @Default(null) @HiveField(1) Schedule? selectedSchedule,
  }) = _SavedSchedulesState;
}
