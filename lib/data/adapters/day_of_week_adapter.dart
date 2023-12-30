import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/models/enums.dart';

class DayOfWeekAdapter extends TypeAdapter<DayOfWeek> {
  @override
  final typeId = HiveTypeIds.dayOfWeek;

  @override
  DayOfWeek read(BinaryReader reader) {
    return DayOfWeek.values[reader.read()];
  }

  @override
  void write(BinaryWriter writer, DayOfWeek obj) {
    writer.write(obj.index);
  }
}
