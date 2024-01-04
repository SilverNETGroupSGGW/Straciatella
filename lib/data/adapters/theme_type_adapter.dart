import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/themes.dart';

class ThemeTypeAdapter extends TypeAdapter<ThemeType> {
  @override
  final typeId = HiveTypeIds.themeType;

  @override
  ThemeType read(BinaryReader reader) {
    return ThemeType.values[reader.read() as int];
  }

  @override
  void write(BinaryWriter writer, ThemeType obj) {
    writer.write(obj.index);
  }
}
