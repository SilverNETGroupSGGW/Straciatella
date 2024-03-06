import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/themes/extensions/day_dot_theme.dart';
import 'package:silvertimetable/themes/extensions/schedule_event_theme.dart';

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
DayDotTheme lightDayDotTheme = DayDotTheme.create();
DayDotTheme darkDayDotTheme = DayDotTheme.create(
  normalDayColor: Colors.white,
  saturdayColor: Colors.white60,
);
ScheduleEventTheme scheduleEventTheme = ScheduleEventTheme();

ThemeData _fromSeedColor(Color seed, Brightness brightness) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seed,
      brightness: brightness,
    ),
    extensions: [
      switch (brightness) {
        Brightness.light => lightDayDotTheme,
        Brightness.dark => darkDayDotTheme,
      },
      scheduleEventTheme,
    ],
  );
}

ThemeData _adaptive(ColorScheme deviceColorScheme, Brightness brightness) {
  return ThemeData(
    colorScheme: deviceColorScheme,
    brightness: brightness,
    extensions: [
      switch (brightness) {
        Brightness.light => lightDayDotTheme,
        Brightness.dark => darkDayDotTheme,
      },
      scheduleEventTheme,
    ],
  );
}

ThemeData retroLightTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    surfaceTint: Colors.grey.shade700,
    shadow: Colors.black,
    primary: Colors.red,
    onPrimary: Colors.white,
    secondary: Colors.red,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.grey.shade800,
  ),
  extensions: [
    lightDayDotTheme,
    scheduleEventTheme,
  ],
);

ThemeData retroDarkTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    surfaceTint: Colors.grey.shade900,
    shadow: Colors.black,
    primary: Colors.red,
    onPrimary: Colors.grey.shade200,
    primaryContainer: Colors.red,
    secondary: Colors.red,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: const Color.fromARGB(255, 29, 29, 29),
    onBackground: Colors.grey,
    surface: const Color.fromARGB(255, 15, 15, 15),
    surfaceVariant: Colors.grey.shade800,
    onSurface: Colors.white,
  ),
  extensions: [
    darkDayDotTheme,
    scheduleEventTheme,
  ],
);
