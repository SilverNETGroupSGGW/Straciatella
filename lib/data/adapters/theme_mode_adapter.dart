import 'package:flutter/material.dart';
import 'package:silvertimetable/data/adapters/enum_adapter.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';

class ThemeModeAdapter extends EnumAdapter<ThemeMode> {
  @override
  final typeId = HiveTypeIds.themeMode;
}
