import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer, ExtendedSchedule {
  @HiveType(
    typeId: HiveTypeIds.lecturer,
    adapterName: "LecturerAdapter",
  )
  factory Lecturer({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String firstName,
    @HiveField(4) required String surname,
    @HiveField(5) required String academicDegree,
    @HiveField(6) required String email,
    @HiveField(7) required List<Subject> subjects,
  }) = _Lecturer;
  Lecturer._();

  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);

  @override
  String toPrettyString() {
    return "$academicDegree $firstName $surname";
  }
}
