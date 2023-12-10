part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = _Init;
  const factory SettingsEvent.saveRequested() = _SaveRequested;
  const factory SettingsEvent.autoThemeModeChanged(
    bool isAuto,
  ) = _AutoThemeModeChanged;

  const factory SettingsEvent.darkThemeModeChanged({
    required ThemeMode themeMode,
  }) = _ThemeModeChanged;
  const factory SettingsEvent.themeColorChanged({
    required Color themeColor,
  }) = _ThemeColorChanged;
  const factory SettingsEvent.debugModeChanged({
    required bool isDebugMode,
  }) = _DebugModeChanged;
  const factory SettingsEvent.firstRunEnded({
    required bool completed,
  }) = _FirstRunChanged;
}
