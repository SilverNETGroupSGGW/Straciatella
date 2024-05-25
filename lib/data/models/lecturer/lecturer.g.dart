// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LecturerImplAdapter extends TypeAdapter<_$LecturerImpl> {
  @override
  final int typeId = 8;

  @override
  _$LecturerImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LecturerImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      firstName: fields[3] as String,
      surName: fields[4] as String,
      academicDegree: fields[5] as String,
      email: fields[6] as String,
      institute: fields[7] as String,
      subjects: (fields[8] as List?)?.cast<Subject>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$LecturerImpl obj) {
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
      ..write(obj.subjects);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LecturerImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerImpl _$$LecturerImplFromJson(Map<String, dynamic> json) =>
    _$LecturerImpl(
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
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LecturerImplToJson(_$LecturerImpl instance) =>
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
