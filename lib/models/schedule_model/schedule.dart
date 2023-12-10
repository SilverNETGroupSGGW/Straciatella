import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psggw/models/degree_model.dart';
import 'package:psggw/models/group_model/group.dart';
import 'package:psggw/models/lesson_model/lesson.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  factory Schedule({
    required String id,
    required String name,
    required int year,
    required int semester,
    required Degree degree,
    required List<Group> groups,
    required List<Lesson> lessons,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
