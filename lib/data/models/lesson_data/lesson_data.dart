import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

part 'lesson_data.freezed.dart';

@freezed
class LessonData with _$LessonData {
  factory LessonData({
    required StudyProgram studyProgram,
    required StudySemester studySemester,
    required Subject subject,
    required Lesson lesson,
  }) = _LessonData;
}
