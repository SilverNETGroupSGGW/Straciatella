import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/mixins.dart';

part 'lecturer_base.freezed.dart';
part 'lecturer_base.g.dart';

@freezed
class LecturerBase with _$LecturerBase, BaseSchedule {
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
  LecturerBase._();

  factory LecturerBase.fromJson(Map<String, dynamic> json) =>
      _$LecturerBaseFromJson(json);
}
