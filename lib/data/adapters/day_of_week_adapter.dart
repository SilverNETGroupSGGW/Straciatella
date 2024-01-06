import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/enums.dart';

class DayOfWeekAdapter extends TypeAdapter<DayOfWeek> {
  @override
  final typeId = HiveTypeIds.dayOfWeek;

  @override
  DayOfWeek read(BinaryReader reader) {
    return DayOfWeek.values[reader.read() as int];
  }

  @override
  void write(BinaryWriter writer, DayOfWeek obj) {
    writer.write(obj.index);
  }
}
