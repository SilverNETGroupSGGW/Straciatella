// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faved_schedules_cubit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavedSchedulesStateAdapter
    extends TypeAdapter<_$FavedSchedulesStateImpl> {
  @override
  final int typeId = 4;

  @override
  _$FavedSchedulesStateImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FavedSchedulesStateImpl(
      favedSchedules: (fields[0] as List).cast<ScheduleBase>(),
      selectedSchedule: fields[1] as ScheduleBase?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FavedSchedulesStateImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.selectedSchedule)
      ..writeByte(0)
      ..write(obj.favedSchedules);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavedSchedulesStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
