import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';

part 'schedule_group.freezed.dart';
part 'schedule_group.g.dart';

@freezed
class ScheduleGroup with _$ScheduleGroup {
  @HiveType(
    typeId: HiveTypeIds.scheduleGroup,
    adapterName: "ScheduleGroupAdapter",
  )
  factory ScheduleGroup({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) String? scheduleId,
    @HiveField(4) required String name,
  }) = _ScheduleGroup;
  ScheduleGroup._();

  factory ScheduleGroup.fromJson(Map<String, dynamic> json) =>
      _$ScheduleGroupFromJson(json);
}
