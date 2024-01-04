import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';

class ThemeModeAdapter extends TypeAdapter<ThemeMode> {
  @override
  final typeId = HiveTypeIds.themeMode;

  @override
  ThemeMode read(BinaryReader reader) {
    return ThemeMode.values[reader.read()];
  }

  @override
  void write(BinaryWriter writer, ThemeMode obj) {
    writer.write(obj.index);
  }
}
