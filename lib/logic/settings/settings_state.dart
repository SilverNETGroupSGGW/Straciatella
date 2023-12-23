part of 'settings_cubit.dart';

@freezed
class SettingsState extends HiveObject with _$SettingsState {
  SettingsState._();

  @HiveType(
    typeId: HiveTypeIds.settingsState,
    adapterName: "SettingsStateAdapter",
  )
  factory SettingsState({
    @Default(ThemeMode.system) @HiveField(0) ThemeMode themeMode,
    @Default(ThemeType.normal) @HiveField(1) ThemeType themeType,
    @Default(true) @HiveField(2) bool isFirstRun,
    @Default(false) @HiveField(3) bool isDebugMode,
    @Default(Colors.red) @HiveField(4) Color themeColor,
  }) = _SettingsState;
}

registerSettingsAdapters() {
  Hive.registerAdapter(SettingsStateAdapter());
}
