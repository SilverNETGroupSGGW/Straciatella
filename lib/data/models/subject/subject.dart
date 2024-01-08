import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/api_duration_converter.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/converters/day_of_week_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/models/schedule_group/schedule_group.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  @HiveType(
    typeId: HiveTypeIds.subject,
    adapterName: "SubjectAdapter",
  )
  factory Subject({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String scheduleId,
    @HiveField(4) required String name,
    @HiveField(5) required String type,
    @HiveField(6) required String startTime,
    @HiveField(7) @DayOfWeekConverter() required DayOfWeek dayOfWeek,
    @HiveField(8) @ApiDurationConverter() required Duration duration,
    @HiveField(9) required bool isRemote,
    @HiveField(10) required String comment,
    @HiveField(11) ScheduleBase? schedule,
    @HiveField(12) List<LecturerBase>? lecturers,
    @HiveField(13) required Classroom classroom,
    @HiveField(14) required List<Lesson> lessons,
    @HiveField(15) required List<ScheduleGroup> groups,
  }) = _Subject;
  Subject._();

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
