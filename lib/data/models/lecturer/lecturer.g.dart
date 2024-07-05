// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LecturerBaseImplAdapter extends TypeAdapter<_$LecturerBaseImpl> {
  @override
  final int typeId = 8;

  @override
  _$LecturerBaseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LecturerBaseImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      firstName: fields[3] as String,
      surName: fields[4] as String,
      academicDegree: fields[5] as String,
      email: fields[6] as String,
      institute: fields[7] as String,
      organization: fields[8] as Organization,
    );
  }

  @override
  void write(BinaryWriter writer, _$LecturerBaseImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.surName)
      ..writeByte(5)
      ..write(obj.academicDegree)
      ..writeByte(6)
      ..write(obj.email)
      ..writeByte(7)
      ..write(obj.institute)
      ..writeByte(8)
      ..write(obj.organization);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LecturerBaseImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LecturerExtImplAdapter extends TypeAdapter<_$LecturerExtImpl> {
  @override
  final int typeId = 9;

  @override
  _$LecturerExtImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LecturerExtImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      firstName: fields[3] as String,
      surName: fields[4] as String,
      academicDegree: fields[5] as String,
      email: fields[6] as String,
      institute: fields[7] as String,
      organization: fields[8] as Organization,
      studyPrograms: (fields[9] as List).cast<StudyProgramExt>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$LecturerExtImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.surName)
      ..writeByte(5)
      ..write(obj.academicDegree)
      ..writeByte(6)
      ..write(obj.email)
      ..writeByte(7)
      ..write(obj.institute)
      ..writeByte(8)
      ..write(obj.organization)
      ..writeByte(9)
      ..write(obj.studyPrograms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LecturerExtImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerBaseImpl _$$LecturerBaseImplFromJson(Map<String, dynamic> json) =>
    _$LecturerBaseImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      firstName: json['firstName'] as String,
      surName: json['surName'] as String,
      academicDegree: json['academicDegree'] as String,
      email: json['email'] as String,
      institute: json['institute'] as String,
      organization:
          Organization.fromJson(json['organization'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LecturerBaseImplToJson(_$LecturerBaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'firstName': instance.firstName,
      'surName': instance.surName,
      'academicDegree': instance.academicDegree,
      'email': instance.email,
      'institute': instance.institute,
      'organization': instance.organization,
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

_$LecturerExtImpl _$$LecturerExtImplFromJson(Map<String, dynamic> json) =>
    _$LecturerExtImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      firstName: json['firstName'] as String,
      surName: json['surName'] as String,
      academicDegree: json['academicDegree'] as String,
      email: json['email'] as String,
      institute: json['institute'] as String,
      organization:
          Organization.fromJson(json['organization'] as Map<String, dynamic>),
      studyPrograms: (json['studyPrograms'] as List<dynamic>)
          .map((e) => StudyProgramExt.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LecturerExtImplToJson(_$LecturerExtImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'firstName': instance.firstName,
      'surName': instance.surName,
      'academicDegree': instance.academicDegree,
      'email': instance.email,
      'institute': instance.institute,
      'organization': instance.organization,
      'studyPrograms': instance.studyPrograms,
      'runtimeType': instance.$type,
    };
