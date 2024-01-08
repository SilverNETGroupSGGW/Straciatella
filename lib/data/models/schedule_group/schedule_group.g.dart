// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_group.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleGroupAdapter extends TypeAdapter<_$ScheduleGroupImpl> {
  @override
  final int typeId = 12;

  @override
  _$ScheduleGroupImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ScheduleGroupImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      scheduleId: fields[3] as String?,
      name: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ScheduleGroupImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.scheduleId)
      ..writeByte(4)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleGroupImpl _$$ScheduleGroupImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleGroupImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      scheduleId: json['scheduleId'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ScheduleGroupImplToJson(_$ScheduleGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'scheduleId': instance.scheduleId,
      'name': instance.name,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
