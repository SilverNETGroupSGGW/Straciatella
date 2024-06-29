import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject, ObjectBase, ParseLessons {
  @HiveType(typeId: HiveTypeIds.subject)
  @With<ParseLessons>()
  factory Subject({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required bool isRemote,
    @HiveField(5) required String comment,
    @HiveField(6) required bool isConditional,
    @HiveField(7) required SubjectType type,
    @HiveField(8) required Classroom classroom,
    @HiveField(9) required List<LecturerBase> lecturers,
    @HiveField(10) required List<StudentGroup> groups,
    @HiveField(11) required List<LessonDef> lessons,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}

@freezed
class SubjectType with _$SubjectType, ObjectBase {
  @HiveType(typeId: HiveTypeIds.subjectType)
  factory SubjectType({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required bool isPrimitiveType,
  }) = _SubjectType;

  factory SubjectType.fromJson(Map<String, dynamic> json) =>
      _$SubjectTypeFromJson(json);
}
