// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_program.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudyProgramBaseImplAdapter extends TypeAdapter<_$StudyProgramBaseImpl> {
  @override
  final int typeId = 19;

  @override
  _$StudyProgramBaseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StudyProgramBaseImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      faculty: fields[4] as String,
      fieldOfStudy: fields[5] as String,
      studyMode: fields[6] as String,
      degreeOfStudy: fields[7] as String,
      startDate: fields[8] as String,
      tenant: fields[9] as Tenant,
    );
  }

  @override
  void write(BinaryWriter writer, _$StudyProgramBaseImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.faculty)
      ..writeByte(5)
      ..write(obj.fieldOfStudy)
      ..writeByte(6)
      ..write(obj.studyMode)
      ..writeByte(7)
      ..write(obj.degreeOfStudy)
      ..writeByte(8)
      ..write(obj.startDate)
      ..writeByte(9)
      ..write(obj.tenant);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudyProgramBaseImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StudyProgramExtImplAdapter extends TypeAdapter<_$StudyProgramExtImpl> {
  @override
  final int typeId = 20;

  @override
  _$StudyProgramExtImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StudyProgramExtImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      faculty: fields[4] as String,
      fieldOfStudy: fields[5] as String,
      studyMode: fields[6] as String,
      degreeOfStudy: fields[7] as String,
      startDate: fields[8] as String,
      tenant: fields[9] as Tenant,
      semesters: (fields[10] as List).cast<StudySemester>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$StudyProgramExtImpl obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.faculty)
      ..writeByte(5)
      ..write(obj.fieldOfStudy)
      ..writeByte(6)
      ..write(obj.studyMode)
      ..writeByte(7)
      ..write(obj.degreeOfStudy)
      ..writeByte(8)
      ..write(obj.startDate)
      ..writeByte(9)
      ..write(obj.tenant)
      ..writeByte(10)
      ..write(obj.semesters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudyProgramExtImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyProgramBaseImpl _$$StudyProgramBaseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudyProgramBaseImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      faculty: json['faculty'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String,
      studyMode: json['studyMode'] as String,
      degreeOfStudy: json['degreeOfStudy'] as String,
      startDate: json['startDate'] as String,
      tenant: Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StudyProgramBaseImplToJson(
        _$StudyProgramBaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'faculty': instance.faculty,
      'fieldOfStudy': instance.fieldOfStudy,
      'studyMode': instance.studyMode,
      'degreeOfStudy': instance.degreeOfStudy,
      'startDate': instance.startDate,
      'tenant': instance.tenant,
      'runtimeType': instance.$type,
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

_$StudyProgramExtImpl _$$StudyProgramExtImplFromJson(
        Map<String, dynamic> json) =>
    _$StudyProgramExtImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      faculty: json['faculty'] as String,
      fieldOfStudy: json['fieldOfStudy'] as String,
      studyMode: json['studyMode'] as String,
      degreeOfStudy: json['degreeOfStudy'] as String,
      startDate: json['startDate'] as String,
      tenant: Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      semesters: (json['semesters'] as List<dynamic>)
          .map((e) => StudySemester.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StudyProgramExtImplToJson(
        _$StudyProgramExtImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'faculty': instance.faculty,
      'fieldOfStudy': instance.fieldOfStudy,
      'studyMode': instance.studyMode,
      'degreeOfStudy': instance.degreeOfStudy,
      'startDate': instance.startDate,
      'tenant': instance.tenant,
      'semesters': instance.semesters,
      'runtimeType': instance.$type,
    };
