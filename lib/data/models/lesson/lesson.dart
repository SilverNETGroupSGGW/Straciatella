import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';

part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  factory Lesson({
    required DateTime startTime,
    required Duration duration,
    required Classroom? classroom,
  }) = _Lesson;
}
