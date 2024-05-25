import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/lesson/lesson.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject, ObjectBase {
  @HiveType(typeId: HiveTypeIds.subject)
  factory Subject({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required String ice,
    @HiveField(5) required bool isRemote,
    @HiveField(6) required String comment,
    @HiveField(7) required bool isConditional,
    @HiveField(8) required SubjectType type,
    // extended info
    @HiveField(9) List<Lesson>? lessons,
    @HiveField(10) List<StudentGroup>? groups,
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
