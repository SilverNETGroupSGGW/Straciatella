import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';

class ScheduleFiltersInfo {
  late final Map<StudyProgram, Map<StudySemester, Set<StudentGroup>>>
      byStudentGroups;

  ScheduleFiltersInfo([
    Map<StudyProgram, Map<StudySemester, Set<StudentGroup>>>? byStudentGroups,
  ]) {
    this.byStudentGroups = byStudentGroups ?? {};
  }

  bool containsStudentGroup(
    String studyProgramId,
    String studySemesterId,
    String groupId,
  ) {
    return byStudentGroups.entries
            .where((entry) => entry.key.id == studyProgramId)
            .firstOrNull
            ?.value
            .entries
            .where((entry) => entry.key.id == studySemesterId)
            .firstOrNull
            ?.value
            .where((entry) => entry.id == groupId)
            .firstOrNull !=
        null;
  }
}
