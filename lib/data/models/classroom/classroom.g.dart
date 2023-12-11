// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomImpl _$$ClassroomImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      floor: json['floor'] as int,
      building: json['building'] as String,
    );

Map<String, dynamic> _$$ClassroomImplToJson(_$ClassroomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'floor': instance.floor,
      'building': instance.building,
    };
