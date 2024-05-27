// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectImplAdapter extends TypeAdapter<_$SubjectImpl> {
  @override
  final int typeId = 10;

  @override
  _$SubjectImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      ice: fields[4] as String,
      isRemote: fields[5] as bool,
      comment: fields[6] as String,
      isConditional: fields[7] as bool,
      type: fields[8] as SubjectType,
      classroom: fields[9] as Classroom,
      lecturers: (fields[10] as List).cast<LecturerBase>(),
      groups: (fields[11] as List).cast<StudentGroup>(),
      lessons: (fields[12] as List).cast<LessonDef>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectImpl obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.ice)
      ..writeByte(5)
      ..write(obj.isRemote)
      ..writeByte(6)
      ..write(obj.comment)
      ..writeByte(7)
      ..write(obj.isConditional)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.classroom)
      ..writeByte(10)
      ..write(obj.lecturers)
      ..writeByte(11)
      ..write(obj.groups)
      ..writeByte(12)
      ..write(obj.lessons);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubjectTypeImplAdapter extends TypeAdapter<_$SubjectTypeImpl> {
  @override
  final int typeId = 23;

  @override
  _$SubjectTypeImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubjectTypeImpl(
      id: fields[0] as String,
      created: fields[1] as DateTime?,
      updated: fields[2] as DateTime?,
      name: fields[3] as String,
      isPrimitiveType: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectTypeImpl obj) {
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
      other is SubjectTypeImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      ice: json['ice'] as String,
      isRemote: json['isRemote'] as bool,
      comment: json['comment'] as String,
      isConditional: json['isConditional'] as bool,
      type: SubjectType.fromJson(json['type'] as Map<String, dynamic>),
      classroom: Classroom.fromJson(json['classroom'] as Map<String, dynamic>),
      lecturers: (json['lecturers'] as List<dynamic>)
          .map((e) => LecturerBase.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => StudentGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => LessonDef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'ice': instance.ice,
      'isRemote': instance.isRemote,
      'comment': instance.comment,
      'isConditional': instance.isConditional,
      'type': instance.type,
      'classroom': instance.classroom,
      'lecturers': instance.lecturers,
      'groups': instance.groups,
      'lessons': instance.lessons,
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

_$SubjectTypeImpl _$$SubjectTypeImplFromJson(Map<String, dynamic> json) =>
    _$SubjectTypeImpl(
      id: json['id'] as String,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeConverter().fromJson),
      updated: _$JsonConverterFromJson<String, DateTime>(
          json['updated'], const DateTimeConverter().fromJson),
      name: json['name'] as String,
      isPrimitiveType: json['isPrimitiveType'] as bool,
    );

Map<String, dynamic> _$$SubjectTypeImplToJson(_$SubjectTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'name': instance.name,
      'isPrimitiveType': instance.isPrimitiveType,
    };
