import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:psggw/data/models/degree.dart';

part 'lecturer.freezed.dart';
part 'lecturer.g.dart';

@freezed
class Lecturer with _$Lecturer {
  factory Lecturer({
    required Degree degree,
    required String email,
    required String surname,
    required String id,
    required String firstName,
  }) = _Lecturer;

  factory Lecturer.fromJson(Map<String, dynamic> json) =>
      _$LecturerFromJson(json);
}
