import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:psggw/data/hiveTypeIds.dart';

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