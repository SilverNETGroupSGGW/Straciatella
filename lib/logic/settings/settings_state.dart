part of 'settings_bloc.dart';

@freezed
class SettingsState extends HiveObject with _$SettingsState {
  SettingsState._();

  @HiveType(typeId: 0, adapterName: "SettingsStateInitialAdapter")
  factory SettingsState.initial() = _Initial;
  @HiveType(typeId: 1, adapterName: "SettingsStateLoadedAdapter")
  factory SettingsState.loaded({
    @Default(ThemeMode.system) @HiveField(0) ThemeMode themeMode,
    @Default(true) @HiveField(1) bool isFirstRun,
    @Default(false) @HiveField(2) bool isDebugMode,
    @Default(Colors.red) @ColorConverter() @HiveField(3) Color themeColor,
  }) = _Loaded;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}

registerSettingsAdapters() {
  Hive.registerAdapter(SettingsStateInitialAdapter());
  Hive.registerAdapter(SettingsStateLoadedAdapter());
}
