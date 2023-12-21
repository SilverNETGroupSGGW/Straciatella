import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';

class ColorAdapter extends TypeAdapter<Color> {
  @override
  final typeId = HiveTypeIds.color;

  @override
  Color read(BinaryReader reader) {
    return Color(reader.read());
  }

  @override
  void write(BinaryWriter writer, Color obj) {
    writer.write(obj.value);
  }
}
