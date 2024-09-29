import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';

typedef FilterOptionsGroup<Key, Value> = Map<Key, Set<Value>>;

class ScheduleFiltersInfo {
  final CollectLessonData lessonData;

  ScheduleFiltersInfo(this.lessonData);

  Map<StudyProgram, FilterOptionsGroup<StudySemester, StudentGroup>>
      byStudentGroups() {
    final result =
        <StudyProgram, FilterOptionsGroup<StudySemester, StudentGroup>>{};

    for (final studyProgram in lessonData.studyPrograms) {
      result[studyProgram] = {};
      for (final studySemester in studyProgram.semesters) {
        result[studyProgram]![studySemester] = {};
        for (final studentGroup
            in studySemester.subjects.expand((subject) => subject.groups)) {
          result[studyProgram]![studySemester]!.add(studentGroup);
        }
      }
    }
    return result;
  }
}
