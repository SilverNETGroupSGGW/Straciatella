import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psggw/data/models/classroom/classroom.dart';
import 'package:psggw/data/models/group/group.dart';
import 'package:psggw/data/models/lecturer/lecturer.dart';
import 'package:psggw/data/extentions/time_of_day.dart  ';

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
  const Lesson._();

  factory Lesson({
    required String id,
    required String name,
    String? comment,
    required DayOfWeek day,
    @TimeOfDayConverter() required TimeOfDay time,
    required Duration duration,
    required Classroom classroom,
    required List<Group> groups,
    required List<Lecturer> lecturers,
  }) = _Lesson;

  TimeOfDay endTime() {
    return time + duration;
  }

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
