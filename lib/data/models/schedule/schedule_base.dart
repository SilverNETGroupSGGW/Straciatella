import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';

part 'schedule_base.freezed.dart';
part 'schedule_base.g.dart';

@freezed
class ScheduleBase with _$ScheduleBase {
  ScheduleBase._();

  @HiveType(
    typeId: HiveTypeIds.scheduleBase,
    adapterName: "ScheduleBaseAdapter",
  )
  factory ScheduleBase({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() required DateTime created,
    @HiveField(2) @DateTimeConverter() required DateTime updated,
    @HiveField(3) required DateTime startDate,
    @HiveField(4) required String name,
    @HiveField(5) required int year,
    @HiveField(6) required int semester,
    @HiveField(7) required String faculty,
    @HiveField(8) required String fieldOfStudy,
    @HiveField(9) required String studyMode,
    @HiveField(10) required String degreeOfStudy,
  }) = _ScheduleBase;

  factory ScheduleBase.fromJson(Map<String, dynamic> json) =>
      _$ScheduleBaseFromJson(json);
}
