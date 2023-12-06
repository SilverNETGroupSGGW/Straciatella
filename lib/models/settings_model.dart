import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Settings {
  String apiUrl;
  bool firstRun = true;
  Locale locale;
  ThemeMode themeMode;
  Color themeColor;
  String accessToken;
  Settings({
    this.themeMode = ThemeMode.system,
    this.themeColor = Colors.green,
    this.accessToken = '',
    this.locale = const Locale('en', 'US'),
    this.apiUrl = '',
    this.firstRun = true,
  });

  Future<bool> saveToStorage() async {
    final settingsBox = await Hive.openBox('settings');
    try {
      await settingsBox.put('currentSettings', this);
      return true;
    } catch (e) {
      return false;
    }
  }

  Settings copyWith({
    String? apiUrl,
    ThemeMode? themeMode,
    String? accessToken,
    Locale? locale,
    Color? themeColor,
    bool? firstRun,
  }) {
    return Settings(
      themeColor: themeColor ?? this.themeColor,
      locale: locale ?? this.locale,
      apiUrl: apiUrl ?? this.apiUrl,
      themeMode: themeMode ?? this.themeMode,
      accessToken: accessToken ?? this.accessToken,
      firstRun: firstRun ?? this.firstRun,
    );
  }

  Map<String, String> header() {
    return {
      "Authorization": "Bearer ${this.accessToken}",
    };
  }
}
