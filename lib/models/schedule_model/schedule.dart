import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psggw/models/degree_model.dart';

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
    required List<dynamic> groups,
    required List<dynamic> lessons,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
