part of 'faved_schedules_cubit.dart';

@freezed
class FavedSchedulesState with _$FavedSchedulesState {
  FavedSchedulesState._();

  @HiveType(
    typeId: HiveTypeIds.favedSchedulesState,
    adapterName: "FavedSchedulesStateAdapter",
  )
  factory FavedSchedulesState({
    @Default([]) @HiveField(0) List<FavableSchedule> favedSchedules,
    @Default(null) @HiveField(1) FavableSchedule? selectedSchedule,
  }) = _FavedSchedulesState;
}
