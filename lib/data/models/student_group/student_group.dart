import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/object_base.dart';

part 'student_group.freezed.dart';
part 'student_group.g.dart';

@freezed
class StudentGroup with _$StudentGroup, ObjectBase {
  @HiveType(typeId: HiveTypeIds.studentGroup)
  factory StudentGroup({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required int capacity,
  }) = _StudentGroup;

  factory StudentGroup.fromJson(Map<String, dynamic> json) =>
      _$StudentGroupFromJson(json);
}
