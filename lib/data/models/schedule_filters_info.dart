import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';

typedef FilterOptionsGroup<Key, Value> = Map<Key, Set<Value>>;

class ScheduleFiltersInfo {
  final FilterOptionsGroup<StudyProgram,
      FilterOptionsGroup<StudySemester, StudentGroup>> byStudentGroups = {};
}
