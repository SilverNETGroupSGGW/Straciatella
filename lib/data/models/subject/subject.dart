import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/api_duration_converter.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/converters/day_of_week_converter.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  Subject._();

  @HiveType(
    typeId: HiveTypeIds.subject,
    adapterName: "SubjectAdapter",
  )
  factory Subject({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required String scheduleId,
    @HiveField(4) required String name,
    @HiveField(5) required String type,
    @HiveField(6) required String startTime,
    @HiveField(7) @DayOfWeekConverter() required DayOfWeek dayOfWeek,
    @HiveField(8) @ApiDurationConverter() required Duration duration,
    @HiveField(9) required bool isRemote,
    @HiveField(10) required String comment,
    @HiveField(11) required ScheduleBase schedule,
    @HiveField(12) required Classroom classroom,
    @HiveField(13) required List<SubjectLesson> lessons,
    @HiveField(14) required List<SubjectGroup> groups,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}

@freezed
class SubjectLesson with _$SubjectLesson {
  SubjectLesson._();

  @HiveType(
    typeId: HiveTypeIds.subjectLesson,
    adapterName: "SubjectLessonAdapter",
  )
  factory SubjectLesson({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required int numberOfLesson,
    @HiveField(4) @DateTimeConverter() required DateTime startTime,
    @HiveField(5) @ApiDurationConverter() required Duration duration,
  }) = _SubjectLesson;

  factory SubjectLesson.fromJson(Map<String, dynamic> json) =>
      _$SubjectLessonFromJson(json);
}

@freezed
class SubjectGroup with _$SubjectGroup {
  SubjectGroup._();

  @HiveType(
    typeId: HiveTypeIds.subjectGroup,
    adapterName: "SubjectGroupAdapter",
  )
  factory SubjectGroup({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required String scheduleId,
    @HiveField(4) required String name,
  }) = _SubjectGroup;

  factory SubjectGroup.fromJson(Map<String, dynamic> json) =>
      _$SubjectGroupFromJson(json);
}
