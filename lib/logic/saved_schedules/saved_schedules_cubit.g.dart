// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_schedules_cubit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedSchedulesStateAdapter
    extends TypeAdapter<_$SavedSchedulesStateImpl> {
  @override
  final int typeId = 4;

  @override
  _$SavedSchedulesStateImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SavedSchedulesStateImpl(
      savedSchedules: (fields[0] as Set).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$SavedSchedulesStateImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.savedSchedules.toList());
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedSchedulesStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
