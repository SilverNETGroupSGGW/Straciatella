import 'package:flutter/material.dart';

const String appName = "silvertimetable";
const String hiveBoxName = "silvertimetable";
const String testingLocation = ".test_data/";

const List<({Locale locale, String name})> supportedLocale = [
  (locale: Locale('en', 'US'), name: "English"),
  (locale: Locale('pl', 'PL'), name: "Polski"),
];

const Locale fallbackLocale = Locale('en', 'US');
const String apiUrl = "https://kampus-sggw-api.azurewebsites.net/api";
