import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/logic/schedule_filters/schedule_filters_cubit.dart';

part 'lesson_data.freezed.dart';

@freezed
class LessonData with _$LessonData, LessonDataMixin {
  @With<LessonDataMixin>()
  factory LessonData({
    required StudyProgram studyProgram,
    required StudySemester studySemester,
    required Subject subject,
    required Lesson lesson,
  }) = _LessonData;
}

mixin LessonDataMixin {
  dynamic _lastFiltersApplied;
  bool _lastIsVisible = true;

  StudyProgram get studyProgram;
  StudySemester get studySemester;
  Subject get subject;

  bool isVisible(ScheduleFiltersState filters) {
    if (filters.visibleGroups == _lastFiltersApplied) return _lastIsVisible;

    _lastFiltersApplied = filters.visibleGroups;
    return _lastIsVisible = filters.visibleGroups.isEmpty ||
        filters.visibleGroups.any(
          (group) =>
              group.studyProgramId == studyProgram.id &&
              group.studySemesterId == studySemester.id &&
              subject.groups.any((g) => g.id == group.groupId),
        );
  }
}
