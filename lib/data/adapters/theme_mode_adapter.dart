import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeModeAdapter extends TypeAdapter<ThemeMode> {
  @override
  final typeId = 2;

  @override
  ThemeMode read(BinaryReader reader) {
    return ThemeMode.values[reader.read()];
  }

  @override
  void write(BinaryWriter writer, ThemeMode obj) {
    writer.write(obj.index);
  }
}