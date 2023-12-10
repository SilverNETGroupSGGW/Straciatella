// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      year: json['year'] as int,
      semester: json['semester'] as int,
      degree: $enumDecode(_$DegreeEnumMap, json['degree']),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'semester': instance.semester,
      'degree': _$DegreeEnumMap[instance.degree]!,
      'groups': instance.groups,
      'lessons': instance.lessons,
    };

const _$DegreeEnumMap = {
  Degree.bachelor: 'bachelor',
  Degree.master: 'master',
  Degree.doctor: 'doctor',
};
