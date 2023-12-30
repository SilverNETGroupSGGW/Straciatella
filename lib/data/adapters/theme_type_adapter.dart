import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/themes.dart';

class ThemeTypeAdapter extends TypeAdapter<ThemeType> {
  @override
  final typeId = HiveTypeIds.themeType;

  @override
  ThemeType read(BinaryReader reader) {
    return ThemeType.values[reader.read()];
  }

  @override
  void write(BinaryWriter writer, ThemeType obj) {
    writer.write(obj.index);
  }
}
