// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_manager_bloc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleManagerStateLoadedAdapter extends TypeAdapter<_$LoadedImpl> {
  @override
  final int typeId = 15;

  @override
  _$LoadedImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LoadedImpl(
      schedulesIndex: fields[0] == null
          ? {}
          : (fields[0] as Map).cast<(Type, String), BaseSchedule>(),
      schedules: fields[1] == null
          ? {}
          : (fields[1] as Map).cast<(Type, String), ExtendedSchedule>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$LoadedImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.schedulesIndex)
      ..writeByte(1)
      ..write(obj.schedules);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleManagerStateLoadedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
