import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings_model.dart';

class SettingsNotifier extends StateNotifier<Settings> {
  SettingsNotifier(super.state);

  void clear() {
    state = Settings();
  }

  void setLocale(Locale locale, BuildContext context) {
    context.setLocale(locale);
    state = state.copyWith(locale: locale);
  }

  void setAccessToken(String accessToken) {
    state = state.copyWith(accessToken: accessToken);
  }

  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  void setThemeColor(Color themeColor) {
    state = state.copyWith(themeColor: themeColor);
  }

  Future<void> init() async {
    await loadSettingsFromStorage();
  }

  Future<void> loadSettingsFromStorage() async {
    final settingsBox = await Hive.openBox('settings');
    final settingsData = settingsBox.get(
      'settings',
      defaultValue: Settings(),
    );
    state = settingsData;
  }

  void setApiUrl(String apiUrl) {
    state = state.copyWith(apiUrl: apiUrl);
  }

  Future<bool> refreshToken() async {
    return true;
  }

  Future<bool> revokeToken() async {
    return true;
  }

  void switchAutoThemeMode(bool value) {
    if (value) {
      setThemeMode(ThemeMode.system);
    } else {
      Brightness currentBrightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      currentBrightness == Brightness.light
          ? setThemeMode(ThemeMode.light)
          : setThemeMode(ThemeMode.dark);
    }
  }

  void setFirstRun(bool value) {
    state = state.copyWith(firstRun: value);
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, Settings>(
  (ref) {
    return SettingsNotifier(
      Settings(),
    );
  },
);
