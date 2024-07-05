// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_group.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentGroupImplAdapter extends TypeAdapter<_$StudentGroupImpl> {
  @override
  final int typeId = 24;

  @override
  _$StudentGroupImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StudentGroupImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      capacity: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$StudentGroupImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.capacity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentGroupImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentGroupImpl _$$StudentGroupImplFromJson(Map<String, dynamic> json) =>
    _$StudentGroupImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      capacity: (json['capacity'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentGroupImplToJson(_$StudentGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'capacity': instance.capacity,
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
