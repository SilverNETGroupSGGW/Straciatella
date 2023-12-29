import 'package:flutter/material.dart';

enum ThemeType { custom, retro, adaptive }

ThemeData getTheme(ThemeType type, bool isDark, Color seedColor) {
  return switch ((type, isDark)) {
    (ThemeType.custom, false) => getLightTheme(seedColor),
    (ThemeType.custom, true) => getDarkTheme(seedColor),
    // TODO: implement adaptive theme
    (ThemeType.adaptive, false) => getLightTheme(seedColor),
    (ThemeType.adaptive, true) => getDarkTheme(seedColor),
    (ThemeType.retro, false) => getRetroLightTheme(),
    (ThemeType.retro, true) => getRetroDarkTheme(),
  };
}

// ** Normal theme
ThemeData getLightTheme(Color seedColor) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
  );
}

ThemeData getDarkTheme(Color seedColor) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
  );
}

// ** Retro theme
ThemeData getRetroLightTheme() {
  return ThemeData(
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
}

ThemeData getRetroDarkTheme() {
  return ThemeData(
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
}
