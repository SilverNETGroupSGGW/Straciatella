part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loaded({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(true) bool isFirstRun,
    @Default(false) bool isDebugMode,
    @Default(Colors.red) @ColorConverter() Color themeColor,
  }) = _Loaded;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}
