import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/object_base.dart';

part 'classroom.freezed.dart';
part 'classroom.g.dart';

@freezed
class Classroom with _$Classroom, ObjectBase {
  @HiveType(typeId: HiveTypeIds.classroom)
  factory Classroom({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required String floor,
    @HiveField(5) required String building,
    @HiveField(6) required int capacity,
    @HiveField(7) required ClassroomType type,
  }) = _Classroom;

  factory Classroom.fromJson(Map<String, dynamic> json) =>
      _$ClassroomFromJson(json);
}

@freezed
class ClassroomType with _$ClassroomType, ObjectBase {
  @HiveType(typeId: HiveTypeIds.classroomType)
  factory ClassroomType({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required bool isPrimitiveType,
  }) = _ClassroomType;

  factory ClassroomType.fromJson(Map<String, dynamic> json) =>
      _$ClassroomTypeFromJson(json);
}
