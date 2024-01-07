import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
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
      switch (fields[0] ?? -1) {
        0 => LecturerBase,
        1 => Lecturer,
        2 => ScheduleBase,
        3 => Schedule,
        _ => throw "Cant read unknown type for ScheduleKey"
      },
      fields[1] as String
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleKey obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(
        switch (obj.$1) {
          const (LecturerBase) => 0,
          const (Lecturer) => 1,
          const (ScheduleBase) => 2,
          const (Schedule) => 3,
          _ => -1,
        },
      )
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
