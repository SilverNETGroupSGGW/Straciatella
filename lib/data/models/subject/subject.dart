import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';

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
    @HiveField(7) required String dayOfWeek,
    @HiveField(8) required String duration,
    @HiveField(9) required bool isRemote,
    @HiveField(10) required String comment,
    @HiveField(11) required ScheduleBase schedule,
    @HiveField(12) required Classroom classroom,
    @HiveField(13) required List<_SubjectLesson> lessons,
    @HiveField(14) required List<_SubjectGroup> groups,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}

@freezed
class _SubjectLesson with _$SubjectLesson {
  _SubjectLesson._();

  @HiveType(
    typeId: HiveTypeIds.subjectLesson,
    adapterName: "SubjectLessonAdapter",
  )
  factory _SubjectLesson({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required int numberOfLesson,
    @HiveField(4) @DateTimeConverter() required DateTime startTime,
    @HiveField(5) required String duration,
  }) = __SubjectLesson;

  factory _SubjectLesson.fromJson(Map<String, dynamic> json) =>
      _$SubjectLessonFromJson(json);
}

@freezed
class _SubjectGroup with _$SubjectGroup {
  _SubjectGroup._();

  @HiveType(
    typeId: HiveTypeIds.subjectGroup,
    adapterName: "SubjectGroupAdapter",
  )
  factory _SubjectGroup({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required String scheduleId,
    @HiveField(4) required String name,
  }) = __SubjectGroup;

  factory _SubjectGroup.fromJson(Map<String, dynamic> json) =>
      _$SubjectGroupFromJson(json);
}
