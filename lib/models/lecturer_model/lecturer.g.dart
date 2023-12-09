// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerImpl _$$LecturerImplFromJson(Map<String, dynamic> json) =>
    _$LecturerImpl(
      degree: $enumDecode(_$DegreeEnumMap, json['degree']),
      email: json['email'] as String,
      surname: json['surname'] as String,
      id: json['id'] as String,
      firstName: json['firstName'] as String,
    );

Map<String, dynamic> _$$LecturerImplToJson(_$LecturerImpl instance) =>
    <String, dynamic>{
      'degree': _$DegreeEnumMap[instance.degree]!,
      'email': instance.email,
      'surname': instance.surname,
      'id': instance.id,
      'firstName': instance.firstName,
    };

const _$DegreeEnumMap = {
  Degree.bachelor: 'bachelor',
  Degree.master: 'master',
  Degree.doctor: 'doctor',
};
