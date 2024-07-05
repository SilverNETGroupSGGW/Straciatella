import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';

part 'study_program.freezed.dart';
part 'study_program.g.dart';

@freezed
class StudyProgram with _$StudyProgram, ObjectBase {
  @HiveType(typeId: HiveTypeIds.studyProgramBase)
  factory StudyProgram.base({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required String faculty,
    @HiveField(5) required String fieldOfStudy,
    @HiveField(6) required String studyMode,
    @HiveField(7) required String degreeOfStudy,
    @HiveField(8) required String startDate,
    @HiveField(9) required Tenant tenant,
  }) = StudyProgramBase;

  @HiveType(typeId: HiveTypeIds.studyProgram)
  @With<CollectLessonData>()
  @With<_CollectLessonDataImpl>()
  factory StudyProgram.ext({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required String faculty,
    @HiveField(5) required String fieldOfStudy,
    @HiveField(6) required String studyMode,
    @HiveField(7) required String degreeOfStudy,
    @HiveField(8) required String startDate,
    @HiveField(9) required Tenant tenant,
    // extended info
    @HiveField(10) required List<StudySemester> semesters,
  }) = StudyProgramExt;

  // ignore: prefer_constructors_over_static_methods
  static StudyProgramExt extWithBase({
    required StudyProgramBase base,
    required List<StudySemester> semesters,
  }) {
    return StudyProgramExt(
      id: base.id,
      created: base.created,
      updated: base.updated,
      name: base.name,
      faculty: base.faculty,
      fieldOfStudy: base.fieldOfStudy,
      studyMode: base.studyMode,
      degreeOfStudy: base.degreeOfStudy,
      startDate: base.startDate,
      tenant: base.tenant,
      semesters: semesters,
    );
  }

  factory StudyProgram.fromJson(Map<String, dynamic> json) =>
      _$StudyProgramFromJson(json);
}

mixin _CollectLessonDataImpl on CollectLessonData {
  @override
  List<StudyProgramExt> get studyPrograms => [this as StudyProgramExt];
}
