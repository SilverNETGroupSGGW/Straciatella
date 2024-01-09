part of 'schedule_manager_bloc.dart';

@freezed
class ScheduleManagerEvent with _$ScheduleManagerEvent {
  const factory ScheduleManagerEvent.init() = _Init;
  const factory ScheduleManagerEvent.setIndex(BaseScheduleCacheMap index) =
      _SetIndex;
  const factory ScheduleManagerEvent.updateIndex() = _UpdateIndex;

  const factory ScheduleManagerEvent.setLecturer(Lecturer lecturer) =
      _SetLecturer;
  const factory ScheduleManagerEvent.updateLecturer(String id) =
      _UpdateLecturer;

  const factory ScheduleManagerEvent.setSchedule(Schedule schedule) =
      _SetSchedule;
  const factory ScheduleManagerEvent.updateSchedule(String id) =
      _UpdateSchedule;

  const factory ScheduleManagerEvent.removeSchedule(ScheduleKey schedule) =
      _RemoveSchedule;

  const factory ScheduleManagerEvent.clear() = _Clear;
}
