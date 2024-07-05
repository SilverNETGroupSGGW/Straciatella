// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_def.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LessonDefImplAdapter extends TypeAdapter<_$LessonDefImpl> {
  @override
  final int typeId = 11;

  @override
  _$LessonDefImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LessonDefImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      classroom: fields[3] as Classroom?,
      ice: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$LessonDefImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.classroom)
      ..writeByte(4)
      ..write(obj.ice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LessonDefImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonDefImpl _$$LessonDefImplFromJson(Map<String, dynamic> json) =>
    _$LessonDefImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      classroom: json['classroom'] == null
          ? null
          : Classroom.fromJson(json['classroom'] as Map<String, dynamic>),
      ice: json['ice'] as String,
    );

Map<String, dynamic> _$$LessonDefImplToJson(_$LessonDefImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'classroom': instance.classroom,
      'ice': instance.ice,
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
