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
      studyProgramsIndex: fields[2] == null
          ? {}
          : (fields[2] as Map).cast<String, StudyProgramBase>(),
      lecturersIndex: fields[3] == null
          ? {}
          : (fields[3] as Map).cast<String, LecturerBase>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ScheduleManagerStateImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.cachedStudyPrograms)
      ..writeByte(1)
      ..write(obj.cachedLecturers)
      ..writeByte(2)
      ..write(obj.studyProgramsIndex)
      ..writeByte(3)
      ..write(obj.lecturersIndex);
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
