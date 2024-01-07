import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/types.dart';

class ScheduleKeyAdapter extends TypeAdapter<ScheduleKey> {
  @override
  final int typeId = HiveTypeIds.scheduleKey;

  @override
  ScheduleKey read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return (
      ScheduleType.values[reader.read() as int],
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleKey obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.$1.index)
      ..writeByte(1)
      ..write(obj.$2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleKeyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
