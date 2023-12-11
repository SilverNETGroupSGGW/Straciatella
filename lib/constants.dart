import 'package:flutter/material.dart';

const String appName = "psggw";
const String hiveBoxName = "psggw";

const List<({Locale locale, String name})> supportedLocale = [
  (locale: Locale('en', 'US'), name: "English"),
  (locale: Locale('pl', 'PL'), name: "Polski"),
];

const Locale fallbackLocale = Locale('en', 'US');
const String apiUrl = "https://kampus-sggw-api.azurewebsites.net/api";
