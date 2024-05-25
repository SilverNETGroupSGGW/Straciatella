// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_semester.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudySemesterImplAdapter extends TypeAdapter<_$StudySemesterImpl> {
  @override
  final int typeId = 21;

  @override
  _$StudySemesterImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StudySemesterImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      year: fields[3] as int,
      semester: fields[4] as int,
      startDate: fields[5] as DateTime,
      subjects: (fields[6] as List?)?.cast<Subject>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$StudySemesterImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.year)
      ..writeByte(4)
      ..write(obj.semester)
      ..writeByte(5)
      ..write(obj.startDate)
      ..writeByte(6)
      ..write(obj.subjects);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudySemesterImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudySemesterImpl _$$StudySemesterImplFromJson(Map<String, dynamic> json) =>
    _$StudySemesterImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      year: (json['year'] as num).toInt(),
      semester: (json['semester'] as num).toInt(),
      startDate:
          const DateTimeConverter().fromJson(json['startDate'] as String),
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StudySemesterImplToJson(_$StudySemesterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'year': instance.year,
      'semester': instance.semester,
      'startDate': const DateTimeConverter().toJson(instance.startDate),
      'subjects': instance.subjects,
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
