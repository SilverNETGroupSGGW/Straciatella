// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_program.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudyProgramImplAdapter extends TypeAdapter<_$StudyProgramImpl> {
  @override
  final int typeId = 19;

  @override
  _$StudyProgramImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StudyProgramImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      faculty: fields[4] as String,
      fieldOfStudy: fields[5] as String,
      studyMode: fields[6] as String,
      degreeOfStudy: fields[7] as String,
      startDate: fields[8] as String,
      semesters: (fields[9] as List?)?.cast<StudySemester>(),
      tenant: fields[10] as Tenant?,
      organization: fields[11] as Organization?,
    );
  }

  @override
  void write(BinaryWriter writer, _$StudyProgramImpl obj) {
    writer
      ..writeByte(12)
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
      ..writeByte(10)
      ..write(obj.tenant)
      ..writeByte(11)
      ..write(obj.organization)
      ..writeByte(9)
      ..write(obj.semesters);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudyProgramImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyProgramImpl _$$StudyProgramImplFromJson(Map<String, dynamic> json) =>
    _$StudyProgramImpl(
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
      semesters: (json['semesters'] as List<dynamic>?)
          ?.map((e) => StudySemester.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudyProgramImplToJson(_$StudyProgramImpl instance) =>
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
      'semesters': instance.semesters,
      'tenant': instance.tenant,
      'organization': instance.organization,
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
