// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_base.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LecturerBaseAdapter extends TypeAdapter<_$LecturerBaseImpl> {
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
      created: fields[1] as DateTime,
      updated: fields[2] as DateTime,
      firstName: fields[3] as String,
      surname: fields[4] as String,
      academicDegree: fields[5] as String,
      email: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$LecturerBaseImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.surname)
      ..writeByte(5)
      ..write(obj.academicDegree)
      ..writeByte(6)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LecturerBaseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerBaseImpl _$$LecturerBaseImplFromJson(Map<String, dynamic> json) =>
    _$LecturerBaseImpl(
      id: json['id'] as String,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
      firstName: json['firstName'] as String,
      surname: json['surname'] as String,
      academicDegree: json['academicDegree'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$LecturerBaseImplToJson(_$LecturerBaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
      'firstName': instance.firstName,
      'surname': instance.surname,
      'academicDegree': instance.academicDegree,
      'email': instance.email,
    };
