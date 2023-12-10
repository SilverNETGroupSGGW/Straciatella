import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}

class LocaleConverter implements JsonConverter<Locale, String> {
  const LocaleConverter();

  @override
  Locale fromJson(String json) {
    final parts = json.split('_');
    return Locale(parts[0], parts[1]);
  }

  @override
  String toJson(Locale object) {
    return '${object.languageCode}_${object.countryCode}';
  }
}

@freezed
class Settings with _$Settings {
  const Settings._();
  factory Settings({
    required ThemeMode themeMode,
    required bool isFirstRun,
    required bool isDebugMode,
    required String deviceToken,
    @ColorConverter() required Color themeColor,
    @LocaleConverter() required Locale locale,
  }) = _Settings;

  factory Settings.empty() => Settings(
        themeMode: ThemeMode.system,
        deviceToken: Uuid().v8(),
        isFirstRun: true,
        isDebugMode: false,
        themeColor: Colors.red,
        locale: Locale('en', 'US'),
      );

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
