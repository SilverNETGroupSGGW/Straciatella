// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
      apiUrl: json['apiUrl'] as String,
      isFirstRun: json['isFirstRun'] as bool,
      isDebugMode: json['isDebugMode'] as bool,
      themeColor: const ColorConverter().fromJson(json['themeColor'] as int),
      locale: const LocaleConverter().fromJson(json['locale'] as String),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'apiUrl': instance.apiUrl,
      'isFirstRun': instance.isFirstRun,
      'isDebugMode': instance.isDebugMode,
      'themeColor': const ColorConverter().toJson(instance.themeColor),
      'locale': const LocaleConverter().toJson(instance.locale),
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
