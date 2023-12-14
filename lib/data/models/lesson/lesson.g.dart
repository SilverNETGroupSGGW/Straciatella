// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      comment: json['comment'] as String?,
      day: $enumDecode(_$DayOfWeekEnumMap, json['day']),
      time: const TimeOfDayConverter().fromJson(json['time'] as String),
      duration: Duration(microseconds: json['duration'] as int),
      classroom: Classroom.fromJson(json['classroom'] as Map<String, dynamic>),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      lecturers: (json['lecturers'] as List<dynamic>)
          .map((e) => Lecturer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment': instance.comment,
      'day': _$DayOfWeekEnumMap[instance.day]!,
      'time': const TimeOfDayConverter().toJson(instance.time),
      'duration': instance.duration.inMicroseconds,
      'classroom': instance.classroom,
      'groups': instance.groups,
      'lecturers': instance.lecturers,
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.monday: 'monday',
  DayOfWeek.tuesday: 'tuesday',
  DayOfWeek.wednesday: 'wednesday',
  DayOfWeek.thursday: 'thursday',
  DayOfWeek.friday: 'friday',
  DayOfWeek.saturday: 'saturday',
  DayOfWeek.sunday: 'sunday',
};
