// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerImpl _$$LecturerImplFromJson(Map<String, dynamic> json) =>
    _$LecturerImpl(
      id: json['id'] as String,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
      firstName: json['firstName'] as String,
      surname: json['surname'] as String,
      academicDegree: json['academicDegree'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$LecturerImplToJson(_$LecturerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
      'firstName': instance.firstName,
      'surname': instance.surname,
      'academicDegree': instance.academicDegree,
      'email': instance.email,
    };
