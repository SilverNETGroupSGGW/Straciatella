import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';

class DurationAdapter extends TypeAdapter<Duration> {
  @override
  final typeId = HiveTypeIds.duration;

  @override
  Duration read(BinaryReader reader) {
    return Duration(milliseconds: reader.read());
  }

  @override
  void write(BinaryWriter writer, Duration obj) {
    writer.write(obj.inMilliseconds);
  }
}
