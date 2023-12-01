import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:psggw/models/settings.dart';

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final typeId = 0;

  @override
  Settings read(BinaryReader reader) {
    return Settings(
      themeMode: ThemeMode.values[reader.read() as int],
      accessToken: "",
      apiUrl: reader.read() as String,
      themeColor: Color(reader.read() as int),
      locale: Locale(reader.read() as String, reader.read() as String),
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer.write(obj.themeMode.index);
    writer.write(obj.apiUrl);
    writer.write(obj.themeColor.value);
    writer.write(obj.locale.languageCode);
    writer.write(obj.locale.countryCode);
  }
}
