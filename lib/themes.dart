import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

enum ThemeType { custom, retro, adaptive }

ThemeData getThemeData(
  SettingsState settings, {
  required ColorScheme? deviceColorScheme,
  bool isDark = false,
}) {
  switch (settings.themeType) {
    case ThemeType.custom:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: settings.themeColor,
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
      );
    case ThemeType.retro:
      return ThemeData(
        colorScheme: isDark ? retroDarkTheme : retroLightTheme,
        brightness: isDark ? Brightness.dark : Brightness.light,
      );
    case ThemeType.adaptive:
      return ThemeData(
        colorScheme: deviceColorScheme,
        brightness: isDark ? Brightness.dark : Brightness.light,
      );
  }
}
