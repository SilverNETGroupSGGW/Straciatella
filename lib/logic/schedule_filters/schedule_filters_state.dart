part of 'schedule_filters_cubit.dart';

typedef _StudentGroupFilterProps = ({
  String studyProgramId,
  String studySemesterId,
  String groupId,
});

@freezed
class ScheduleFiltersState with _$ScheduleFiltersState {
  const factory ScheduleFiltersState({
    @Default([]) List<_StudentGroupFilterProps> visibleGroups,
  }) = _ScheduleFiltersState;

  factory ScheduleFiltersState.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFiltersStateFromJson(json);
}
