// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      startDate: DateTime.parse(json['startDate'] as String),
      name: json['name'] as String,
      year: json['year'] as int,
      semester: json['semester'] as int,
      faculty: json['faculty'] as String,
      fieldofStudy: json['fieldofStudy'] as String,
      studyMode: json['studyMode'] as String,
      degreeOfStudy: json['degreeOfStudy'] as String,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'startDate': instance.startDate.toIso8601String(),
      'name': instance.name,
      'year': instance.year,
      'semester': instance.semester,
      'faculty': instance.faculty,
      'fieldofStudy': instance.fieldofStudy,
      'studyMode': instance.studyMode,
      'degreeOfStudy': instance.degreeOfStudy,
      'subjects': instance.subjects,
    };
