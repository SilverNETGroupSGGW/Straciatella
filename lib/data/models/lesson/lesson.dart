import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  factory Lesson({
    required LessonDef def,
    required Subject subject,
    required DateTime startTime,
    required Duration duration,
  }) = _Lesson;
}
