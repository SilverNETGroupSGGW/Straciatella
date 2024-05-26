part of 'schedule_manager_bloc.dart';

@freezed
class ScheduleManagerEvent with _$ScheduleManagerEvent {
  const factory ScheduleManagerEvent.init() = _Init;
  const factory ScheduleManagerEvent.setIndex(
    List<StudyProgramBase> studyPrograms,
    List<LecturerBase> lecturers,
  ) = _SetIndex;
  const factory ScheduleManagerEvent.updateIndex() = _UpdateIndex;

  const factory ScheduleManagerEvent.cacheLecturer(LecturerExt lecturer) =
      _CacheLecturer;
  const factory ScheduleManagerEvent.updateLecturer(String id) =
      _UpdateLecturer;

  const factory ScheduleManagerEvent.cacheStudyProgram(
    StudyProgramExt studyProgram,
  ) = _CacheStudyProgram;
  const factory ScheduleManagerEvent.updateStudyProgram(String id) =
      _UpdateStudyProgram;

  const factory ScheduleManagerEvent.removeSchedule(ScheduleKey schedule) =
      _RemoveSchedule;

  const factory ScheduleManagerEvent.clear() = _Clear;
}
