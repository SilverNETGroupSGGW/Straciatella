// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_cubit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsStateAdapter extends TypeAdapter<_$SettingsStateImpl> {
  @override
  final int typeId = 0;

  @override
  _$SettingsStateImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SettingsStateImpl(
      themeMode: fields[0] as ThemeMode,
      themeType: fields[4] as ThemeType,
      isFirstRun: fields[1] as bool,
      isDebugMode: fields[2] as bool,
      themeColor: fields[3] as Color,
    );
  }

  @override
  void write(BinaryWriter writer, _$SettingsStateImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.themeMode)
      ..writeByte(4)
      ..write(obj.themeType)
      ..writeByte(1)
      ..write(obj.isFirstRun)
      ..writeByte(2)
      ..write(obj.isDebugMode)
      ..writeByte(3)
      ..write(obj.themeColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
