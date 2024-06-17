import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer, ObjectBase {
  @HiveType(typeId: HiveTypeIds.lecturerBase)
  factory Lecturer.base({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String firstName,
    @HiveField(4) required String surName,
    @HiveField(5) required String academicDegree,
    @HiveField(6) required String email,
    @HiveField(7) required String institute,
    @HiveField(8) required Organization organization,
  }) = LecturerBase;

  @HiveType(typeId: HiveTypeIds.lecturer)
  @With<WithLessonsData>()
  factory Lecturer.ext({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String firstName,
    @HiveField(4) required String surName,
    @HiveField(5) required String academicDegree,
    @HiveField(6) required String email,
    @HiveField(7) required String institute,
    @HiveField(8) required Organization organization,
    // extended data
    @HiveField(9) required List<StudyProgramExt> studyPrograms,
  }) = LecturerExt;
  Lecturer._();

  // ignore: prefer_constructors_over_static_methods
  static LecturerExt extWithBase({
    required LecturerBase base,
    required List<StudyProgramExt> studyPrograms,
  }) {
    return LecturerExt(
      id: base.id,
      created: base.created,
      updated: base.updated,
      firstName: base.firstName,
      surName: base.surName,
      academicDegree: base.academicDegree,
      email: base.email,
      institute: base.institute,
      organization: base.organization,
      studyPrograms: studyPrograms,
    );
  }

  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);
}
