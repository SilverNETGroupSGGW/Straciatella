import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

// choosing theme logic
ThemeData getThemeData(
  SettingsState settings, {
  ColorScheme? deviceColorScheme,
  Brightness brightness = Brightness.light,
}) {
  return switch ((settings.themeType, deviceColorScheme, brightness)) {
    (ThemeType.custom, _, _) => _fromSeedColor(settings.themeColor, brightness),
    (ThemeType.retro, _, Brightness.light) => retroLightTheme,
    (ThemeType.retro, _, Brightness.dark) => retroDarkTheme,
    (ThemeType.adaptive, null, _) =>
      _fromSeedColor(settings.themeColor, brightness),
    (ThemeType.adaptive, _, _) => _adaptive(deviceColorScheme!, brightness),
  };
}

// *** Themes definitions
ThemeData _fromSeedColor(Color seed, Brightness brightness) {
  return ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seed,
      brightness: brightness,
    ),
  );
}

ThemeData _adaptive(ColorScheme deviceColorScheme, Brightness brightness) {
  return ThemeData(
    colorScheme: deviceColorScheme,
    brightness: brightness,
  );
}

ThemeData retroLightTheme = ThemeData.from(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    shadow: Colors.black,
    primary: Colors.red,
    surfaceTint: Colors.grey.shade800,
    onPrimary: Colors.white,
    secondary: Colors.red,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.grey.shade900,
    onBackground: Colors.grey,
    surface: Colors.black54,
    onSurface: Colors.white,
  ),
);

ThemeData retroDarkTheme = ThemeData.from(
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    shadow: Colors.black,
    primary: Colors.red,
    surfaceTint: Colors.grey.shade800,
    onPrimary: Colors.white,
    secondary: Colors.red,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.grey.shade900,
    onBackground: Colors.grey,
    surface: Colors.black54,
    onSurface: Colors.white,
  ),
);
