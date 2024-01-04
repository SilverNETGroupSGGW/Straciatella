import 'package:flutter/material.dart';

const String appName = "silvertimetable";
const String hiveBoxName = "silvertimetable";
const String testingLocation = "./.test_data/";

const List<({Locale locale, String name})> supportedLocale = [
  (locale: Locale('en', 'US'), name: "English"),
  (locale: Locale('pl', 'PL'), name: "Polski"),
];

const Locale fallbackLocale = Locale('en', 'US');
const String apiUrl = "https://kampus-sggw-api.azurewebsites.net/api";

final privacyPolicyUrl =
    Uri.parse("https://silvernetgroup.github.io/privacy-policy/");

ColorScheme retroLightTheme = ColorScheme(
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
);

ColorScheme retroDarkTheme = ColorScheme(
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
);
