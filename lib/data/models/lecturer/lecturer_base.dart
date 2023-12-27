import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';

part 'lecturer_base.freezed.dart';
part 'lecturer_base.g.dart';

@freezed
class LecturerBase with _$LecturerBase {
  LecturerBase._();

  @HiveType(
    typeId: HiveTypeIds.lecturerBase,
    adapterName: "LecturerBaseAdapter",
  )
  factory LecturerBase({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required String firstName,
    @HiveField(4) required String surname,
    @HiveField(5) required String academicDegree,
    @HiveField(6) required String email,
  }) = _LecturerBase;

  factory LecturerBase.fromJson(Map<String, dynamic> json) =>
      _$LecturerBaseFromJson(json);
}