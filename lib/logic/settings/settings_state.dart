part of 'settings_cubit.dart';

@freezed
class SettingsState extends HiveObject with _$SettingsState {
  @HiveType(
    typeId: HiveTypeIds.settingsState,
    adapterName: "SettingsStateAdapter",
  )
  factory SettingsState({
    @Default(ThemeMode.system)
    @HiveField(0, defaultValue: ThemeMode.system)
    ThemeMode themeMode,
    @Default(ThemeType.custom)
    @HiveField(4, defaultValue: ThemeType.custom)
    ThemeType themeType,
    @Default(true) @HiveField(1, defaultValue: true) bool isFirstRun,
    @Default(kDebugMode)
    @HiveField(2, defaultValue: kDebugMode)
    bool isDebugMode,
    @Default(Colors.red)
    @HiveField(3, defaultValue: Colors.red)
    Color themeColor,
    @Default(false) @HiveField(5, defaultValue: false) bool isFabHidden,
  }) = _SettingsState;
  SettingsState._();
}
