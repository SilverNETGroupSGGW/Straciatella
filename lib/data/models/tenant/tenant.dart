import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/converters/datetime_converter.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/object_base.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';

part 'tenant.freezed.dart';
part 'tenant.g.dart';

@freezed
class Tenant with _$Tenant, ObjectBase {
  @HiveType(typeId: HiveTypeIds.tenant)
  factory Tenant({
    @HiveField(0) required String id,
    @HiveField(1) @DateTimeConverter() DateTime? created,
    @HiveField(2) @DateTimeConverter() DateTime? updated,
    @HiveField(3) required String name,
    @HiveField(4) required Organization organization,
  }) = _Tenant;

  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
}
