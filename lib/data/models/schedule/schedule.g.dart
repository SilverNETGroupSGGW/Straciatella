// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleAdapter extends TypeAdapter<_$ScheduleImpl> {
  @override
  final int typeId = 6;

  @override
  _$ScheduleImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ScheduleImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      startDate: fields[3] as DateTime,
      name: fields[4] as String,
      year: fields[5] as int,
      semester: fields[6] as int,
      faculty: fields[7] as String,
      fieldOfStudy: fields[8] as String,
      studyMode: fields[9] as String,
      degreeOfStudy: fields[10] as String,
      subjects: (fields[11] as List).cast<Subject>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ScheduleImpl obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.startDate)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.year)
      ..writeByte(6)
      ..write(obj.semester)
      ..writeByte(7)
      ..write(obj.faculty)
      ..writeByte(8)
      ..write(obj.fieldOfStudy)
      ..writeByte(9)
      ..write(obj.studyMode)
      ..writeByte(10)
      ..write(obj.degreeOfStudy)
      ..writeByte(11)
      ..write(obj.subjects);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      startDate: DateTime.parse(json['startDate'] as String),
      name: json['name'] as String,
      year: json['year'] as int,
      semester: json['semester'] as int,
      faculty: json['faculty'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String,
      studyMode: json['studyMode'] as String,
      degreeOfStudy: json['degreeOfStudy'] as String,
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'startDate': instance.startDate.toIso8601String(),
      'name': instance.name,
      'year': instance.year,
      'semester': instance.semester,
      'faculty': instance.faculty,
      'fieldOfStudy': instance.fieldOfStudy,
      'studyMode': instance.studyMode,
      'degreeOfStudy': instance.degreeOfStudy,
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
