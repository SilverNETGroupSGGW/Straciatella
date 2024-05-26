// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_manager_bloc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleManagerStateImplAdapter
    extends TypeAdapter<_$ScheduleManagerStateImpl> {
  @override
  final int typeId = 16;

  @override
  _$ScheduleManagerStateImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ScheduleManagerStateImpl(
      cachedStudyPrograms: fields[0] == null
          ? {}
          : (fields[0] as Map).cast<String, StudyProgramExt>(),
      cachedLecturers: fields[1] == null
          ? {}
          : (fields[1] as Map).cast<String, LecturerExt>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ScheduleManagerStateImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.cachedStudyPrograms)
      ..writeByte(1)
      ..write(obj.cachedLecturers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleManagerStateImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
