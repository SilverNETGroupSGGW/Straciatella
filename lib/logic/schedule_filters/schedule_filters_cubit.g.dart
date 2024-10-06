// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_filters_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleFiltersStateImpl _$$ScheduleFiltersStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleFiltersStateImpl(
      visibleGroups: (json['visibleGroups'] as List<dynamic>?)
              ?.map((e) => _$recordConvert(
                    e,
                    ($jsonValue) => (
                      groupId: $jsonValue['groupId'] as String,
                      studyProgramId: $jsonValue['studyProgramId'] as String,
                      studySemesterId: $jsonValue['studySemesterId'] as String,
                    ),
                  ))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ScheduleFiltersStateImplToJson(
        _$ScheduleFiltersStateImpl instance) =>
    <String, dynamic>{
      'visibleGroups': instance.visibleGroups
          .map((e) => <String, dynamic>{
                'groupId': e.groupId,
                'studyProgramId': e.studyProgramId,
                'studySemesterId': e.studySemesterId,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
