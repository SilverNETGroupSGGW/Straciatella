// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_manager_bloc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleManagerHiveStateAdapter
    extends TypeAdapter<_$ScheduleManagerHiveStateImpl> {
  @override
  final int typeId = 16;

  @override
  _$ScheduleManagerHiveStateImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ScheduleManagerHiveStateImpl(
      schedules: fields[0] == null
          ? {}
          : (fields[0] as Map)
              .cast<({String id, ScheduleType type}), ExtendedSchedule>(),
      schedulesIndex: fields[1] == null
          ? {}
          : (fields[1] as Map)
              .cast<({String id, ScheduleType type}), BaseSchedule>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ScheduleManagerHiveStateImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.schedules)
      ..writeByte(1)
      ..write(obj.schedulesIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleManagerHiveStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
