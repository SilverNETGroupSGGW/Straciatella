import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:psggw/models/settings_model/settings.dart';

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final typeId = 0;

  @override
  Settings read(BinaryReader reader) {
    return Settings(
      themeMode: ThemeMode.values[reader.read() as int],
      themeColor: Color(reader.read() as int),
      locale: Locale(reader.read() as String, reader.read() as String),
      isFirstRun: reader.read() as bool,
      isDebugMode: reader.read() as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer.write(obj.themeMode.index);
    writer.write(obj.themeColor.value);
    writer.write(obj.locale.languageCode);
    writer.write(obj.locale.countryCode);
    writer.write(obj.isFirstRun);
    writer.write(obj.isDebugMode);
  }
}
