import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer, ObjectBase, ScheduleEventable {
  @HiveType(typeId: HiveTypeIds.lecturerBase)
  factory Lecturer({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String firstName,
    @HiveField(4) required String surName,
    @HiveField(5) required String academicDegree,
    @HiveField(6) required String email,
    @HiveField(7) required String institute,
    // extended info
    @HiveField(8) List<Subject>? subjects,
  }) = _Lecturer;
  Lecturer._();

  @override
  List<Subject> get scheduleSubjects => subjects ?? <Subject>[];

  @override
  // TODO: implement title
  String get title => "nice title";

  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);
}
