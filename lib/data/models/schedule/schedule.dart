import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psggw/data/models/degree.dart';
import 'package:psggw/data/models/group/group.dart';
import 'package:psggw/data/models/lesson/lesson.dart';

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