import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';

part 'study_program.freezed.dart';
part 'study_program.g.dart';

@freezed
class StudyProgram with _$StudyProgram, ObjectBase, ScheduleEventable {
  @HiveType(typeId: HiveTypeIds.studyProgram)
  factory StudyProgram({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required String faculty,
    @HiveField(5) required String fieldOfStudy,
    @HiveField(6) required String studyMode,
    @HiveField(7) required String degreeOfStudy,
    @HiveField(8) required String startDate,
    // extended info
    @HiveField(9) List<StudySemester>? semesters,
    @HiveField(10) Tenant? tenant,
    @HiveField(11) Organization? organization,
  }) = _StudyProgram;
  StudyProgram._();

  @override
  List<Subject> get scheduleSubjects =>
      semesters?.fold<List<Subject>>(
        <Subject>[],
        (all, sem) => all..addAll(sem.subjects ?? []),
      ) ??
      [];

  @override
  // TODO: implement title
  String get title => "nice title";

  factory StudyProgram.fromJson(Map<String, dynamic> json) =>
      _$StudyProgramFromJson(json);
}
