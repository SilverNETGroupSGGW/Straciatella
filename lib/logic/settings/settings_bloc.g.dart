// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_bloc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsStateInitialAdapter extends TypeAdapter<_$InitialImpl> {
  @override
  final int typeId = 0;

  @override
  _$InitialImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$InitialImpl();
  }

  @override
  void write(BinaryWriter writer, _$InitialImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsStateInitialAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SettingsStateLoadedAdapter extends TypeAdapter<_$LoadedImpl> {
  @override
  final int typeId = 1;

  @override
  _$LoadedImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LoadedImpl(
      themeMode: fields[0] as ThemeMode,
      isFirstRun: fields[1] as bool,
      isDebugMode: fields[2] as bool,
      themeColor: fields[3] as Color,
    );
  }

  @override
  void write(BinaryWriter writer, _$LoadedImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.themeMode)
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
      other is SettingsStateLoadedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadedImpl _$$LoadedImplFromJson(Map<String, dynamic> json) => _$LoadedImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      isFirstRun: json['isFirstRun'] as bool? ?? true,
      isDebugMode: json['isDebugMode'] as bool? ?? false,
      themeColor: json['themeColor'] == null
          ? Colors.red
          : const ColorConverter().fromJson(json['themeColor'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedImplToJson(_$LoadedImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'isFirstRun': instance.isFirstRun,
      'isDebugMode': instance.isDebugMode,
      'themeColor': const ColorConverter().toJson(instance.themeColor),
      'runtimeType': instance.$type,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
