import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {

  @HiveType(
    typeId: HiveTypeIds.schedule,
    adapterName: "ScheduleAdapter",
  )
  factory Schedule({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required DateTime startDate,
    @HiveField(4) required String name,
    @HiveField(5) required int year,
    @HiveField(6) required int semester,
    @HiveField(7) required String faculty,
    @HiveField(8) required String fieldOfStudy,
    @HiveField(9) required String studyMode,
    @HiveField(10) required String degreeOfStudy,
    @HiveField(11) required List<Subject> subjects,
  }) = _Schedule;
  Schedule._();

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
