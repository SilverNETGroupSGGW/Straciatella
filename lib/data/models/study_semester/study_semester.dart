import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

part 'study_semester.freezed.dart';
part 'study_semester.g.dart';

@freezed
class StudySemester with _$StudySemester, ObjectBase {
  @HiveType(typeId: HiveTypeIds.studySemester)
  factory StudySemester({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required int year,
    @HiveField(4) required int semester,
    @HiveField(5) @DateTimeConverter() required DateTime startDate,
    @HiveField(6) required List<Subject> subjects,
  }) = _StudySemester;

  factory StudySemester.fromJson(Map<String, dynamic> json) =>
      _$StudySemesterFromJson(json);
}
