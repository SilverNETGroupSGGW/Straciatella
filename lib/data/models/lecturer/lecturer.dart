import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer  {
  factory Lecturer({
    required String id,
    @DateTimeConverter() required DateTime created,
    @DateTimeConverter() required DateTime updated,
    required String firstName,
    required String surname,
    required String academicDegree,
    required String email
  }) = _Lecturer;

  factory Lecturer.fromJson(Map<String, dynamic> json) => _$LecturerFromJson(json);
}