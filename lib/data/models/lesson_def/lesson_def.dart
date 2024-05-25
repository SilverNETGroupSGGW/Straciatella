import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/object_base.dart';

part 'lesson_def.freezed.dart';
part 'lesson_def.g.dart';

@freezed
class LessonDef with _$LessonDef, ObjectBase, ICalendarable {
  @HiveType(typeId: HiveTypeIds.lessonDef)
  factory LessonDef({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) Classroom? classroom, // might be remote
    @HiveField(4) required String ice, // iCalendarEvent
  }) = _LessonDef;
  LessonDef._();

  factory LessonDef.fromJson(Map<String, dynamic> json) =>
      _$LessonDefFromJson(json);
}
