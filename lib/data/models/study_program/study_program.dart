import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';

part 'study_program.freezed.dart';
part 'study_program.g.dart';

@freezed
class StudyProgram with _$StudyProgram, ObjectBase {
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
  }) = _StudyProgram;

  factory StudyProgram.fromJson(Map<String, dynamic> json) =>
      _$StudyProgramFromJson(json);
}
