// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectAdapter extends TypeAdapter<_$SubjectImpl> {
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
      scheduleId: fields[3] as String,
      name: fields[4] as String,
      type: fields[5] as String,
      startTime: fields[6] as String,
      dayOfWeek: fields[7] as DayOfWeek,
      duration: fields[8] as Duration,
      isRemote: fields[9] as bool,
      comment: fields[10] as String,
      schedule: fields[11] as ScheduleBase?,
      lecturers: (fields[12] as List?)?.cast<LecturerBase>(),
      classroom: fields[13] as Classroom,
      lessons: (fields[14] as List).cast<Lesson>(),
      groups: (fields[15] as List).cast<ScheduleGroup>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$SubjectImpl obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created)
      ..writeByte(2)
      ..write(obj.updated)
      ..writeByte(3)
      ..write(obj.scheduleId)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.startTime)
      ..writeByte(7)
      ..write(obj.dayOfWeek)
      ..writeByte(8)
      ..write(obj.duration)
      ..writeByte(9)
      ..write(obj.isRemote)
      ..writeByte(10)
      ..write(obj.comment)
      ..writeByte(11)
      ..write(obj.schedule)
      ..writeByte(13)
      ..write(obj.classroom)
      ..writeByte(12)
      ..write(obj.lecturers)
      ..writeByte(14)
      ..write(obj.lessons)
      ..writeByte(15)
      ..write(obj.groups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectAdapter &&
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
      scheduleId: json['scheduleId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      startTime: json['startTime'] as String,
      dayOfWeek:
          const DayOfWeekConverter().fromJson(json['dayOfWeek'] as String),
      duration:
          const ApiDurationConverter().fromJson(json['duration'] as String),
      isRemote: json['isRemote'] as bool,
      comment: json['comment'] as String,
      schedule: json['schedule'] == null
          ? null
          : ScheduleBase.fromJson(json['schedule'] as Map<String, dynamic>),
      lecturers: (json['lecturers'] as List<dynamic>?)
          ?.map((e) => LecturerBase.fromJson(e as Map<String, dynamic>))
          .toList(),
      classroom: Classroom.fromJson(json['classroom'] as Map<String, dynamic>),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => ScheduleGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeConverter().toJson),
      'updated': _$JsonConverterToJson<String, DateTime>(
          instance.updated, const DateTimeConverter().toJson),
      'scheduleId': instance.scheduleId,
      'name': instance.name,
      'type': instance.type,
      'startTime': instance.startTime,
      'dayOfWeek': const DayOfWeekConverter().toJson(instance.dayOfWeek),
      'duration': const ApiDurationConverter().toJson(instance.duration),
      'isRemote': instance.isRemote,
      'comment': instance.comment,
      'schedule': instance.schedule,
      'lecturers': instance.lecturers,
      'classroom': instance.classroom,
      'lessons': instance.lessons,
      'groups': instance.groups,
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
