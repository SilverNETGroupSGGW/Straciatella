import 'package:flutter/material.dart';

ThemeData getLightTheme(Color seedColor) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
  );
}

ThemeData getRetroTheme(bool isDark) {
  var darkTheme = ThemeData(
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
  var lightTheme = ThemeData(
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
  return isDark ? darkTheme : lightTheme;
}

ThemeData getDarkTheme(Color seedColor) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
  );
}
