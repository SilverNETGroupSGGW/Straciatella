// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassroomImplAdapter extends TypeAdapter<_$ClassroomImpl> {
  @override
  final int typeId = 7;

  @override
  _$ClassroomImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ClassroomImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      floor: fields[4] as String,
      building: fields[5] as String,
      capacity: fields[6] as int,
      type: fields[7] as ClassroomType,
    );
  }

  @override
  void write(BinaryWriter writer, _$ClassroomImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.floor)
      ..writeByte(5)
      ..write(obj.building)
      ..writeByte(6)
      ..write(obj.capacity)
      ..writeByte(7)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassroomImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClassroomTypeImplAdapter extends TypeAdapter<_$ClassroomTypeImpl> {
  @override
  final int typeId = 18;

  @override
  _$ClassroomTypeImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ClassroomTypeImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      isPrimitiveType: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$ClassroomTypeImpl obj) {
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
      ..write(obj.isPrimitiveType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassroomTypeImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomImpl _$$ClassroomImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      floor: json['floor'] as String,
      building: json['building'] as String,
      capacity: (json['capacity'] as num).toInt(),
      type: ClassroomType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassroomImplToJson(_$ClassroomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'floor': instance.floor,
      'building': instance.building,
      'capacity': instance.capacity,
      'type': instance.type,
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

_$ClassroomTypeImpl _$$ClassroomTypeImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomTypeImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      isPrimitiveType: json['isPrimitiveType'] as bool,
    );

Map<String, dynamic> _$$ClassroomTypeImplToJson(_$ClassroomTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'isPrimitiveType': instance.isPrimitiveType,
    };
