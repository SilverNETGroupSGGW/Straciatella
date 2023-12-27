import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:hive/hive.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer {
  Lecturer._();

  @HiveType(
    typeId: HiveTypeIds.lecturer,
    adapterName: "LecturerAdapter",
  )
  factory Lecturer({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required String firstName,
    @HiveField(4) required String surname,
    @HiveField(5) required String academicDegree,
    @HiveField(6) required String email,
    @HiveField(7) required List<Subject> subjects,
  }) = _Lecturer;

  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);
}
