import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

// {
//   "id": "50f32128-425a-4799-9610-1401a5636104",
//   "created": "2023-12-14T23:08:57.0342001",
//   "updated": "2023-12-14T23:08:57.0342003",
//   "startDate": "2023-01-01T00:00:00:00:00",
//   "name": "3",
//   "year": 1,
//   "semester": 1,
//   "faculty": "3",
//   "fieldofStudy": "3",
//   "studyMode": "FullTimeStudies",
//   "degreeOfStudy": "BachelorsDegree",
//   "subjects": null,
// }

@freezed
class Schedule with _$Schedule {
  factory Schedule({
    required String id,
    @DateTimeConverter() required DateTime created,
    @DateTimeConverter() required DateTime updated,
    required DateTime startDate,
    required String name,
    required int year,
    required int semester,
    required String faculty,
    required String fieldOfStudy,
    required String studyMode,
    required String degreeOfStudy,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
