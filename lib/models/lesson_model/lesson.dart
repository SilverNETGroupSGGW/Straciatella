import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psggw/models/classroom_model/classroom.dart';
import 'package:psggw/models/group_model/group.dart';
import 'package:psggw/models/lecturer_model/lecturer.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final parts = json.split(':');
    return TimeOfDay(
      hour: int.parse(parts[0]),
      minute: int.parse(parts[1]),
    );
  }

  @override
  String toJson(TimeOfDay object) {
    return '${object.hour}:${object.minute}';
  }
}

@freezed
class Lesson with _$Lesson {
  factory Lesson({
    required String id,
    required String name,
    required String comment,
    required DayOfWeek dayOfWeek,
    @TimeOfDayConverter() required TimeOfDay startTime,
    required Duration duration,
    required Classroom classroom,
    required List<Group> groups,
    required List<Lecturer> lecturers,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
