import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dio/dio.dart';

class Settings {
  String apiUrl;
  bool ranSetup = false;
  Locale locale;
  ThemeMode themeMode;
  Color themeColor;
  String accessToken;
  Settings({
    this.themeMode = ThemeMode.system,
    this.themeColor = Colors.green,
    this.accessToken = '',
    this.locale = const Locale('en', 'US'),
    this.apiUrl = 'https://kampus-sggw-api.azurewebsites.net/api',
  });

  Future<bool> saveToStorage() async {
    final settingsBox = await Hive.openBox('settings');
    try {
      await settingsBox.put('currentSettings', this);
      return true;
    } catch (e) {
      return false;
    }
  }

  Settings copyWith({
    String? apiUrl,
    ThemeMode? themeMode,
    String? accessToken,
    Color? themeColor,
  }) {
    return Settings(
      themeColor: themeColor ?? this.themeColor,
      apiUrl: apiUrl ?? this.apiUrl,
      themeMode: themeMode ?? this.themeMode,
      accessToken: accessToken ?? this.accessToken,
    );
  }

  Map<String, String> header() {
    return {
      "Authorization": "Bearer ${this.accessToken}",
    };
  }
}

void saveSettingsToStorage(Settings settingsData) async {
  final loginCredentialsBox = Hive.box('login_credentials');
  await loginCredentialsBox.put('account', settingsData);
}

class SettingsDataNotifier extends StateNotifier<Settings> {
  SettingsDataNotifier(super.state);

  void setThemeMode(ThemeMode themeMode) {
    state = state.copyWith(themeMode: themeMode);
  }

  void setThemeColor(Color themeColor) {
    state = state.copyWith(themeColor: themeColor);
  }

  Future<String> loginFromStorage() async {
    final credentials = await loadCredentialsFromStorage();
    return await login(credentials);
  }

  Future<bool> init() async {
    await loadSettingsFromStorage();
    await loginFromStorage();
    return true;
  }

  Future<void> loadSettingsFromStorage() async {
    final settingsBox = await Hive.openBox('settings');
    final settingsData = settingsBox.get(
      'currentSettings',
      defaultValue: Settings(),
    );
    state = settingsData;
  }

  Future<String> login(
    Map<String, String> credentials,
  ) async {
    if (credentials['email'] == '' || credentials['password'] == '') {
      return '';
    }
    credentials['deviceToken'] = 'Plan WZIM';
    final dio = Dio();
    Response response;
    try {
      response = await dio.post(
        '${state.apiUrl}/Tokens/login',
        data: credentials,
      );
    } catch (e) {
      return '';
    }
    if (response.statusCode == 200) {
      var accessToken = response.data['accessToken'];
      state = state.copyWith(accessToken: accessToken);
      return accessToken;
    }
    return '';
  }

  Future<Map<String, String>> loadCredentialsFromStorage() async {
    final loginCredentialsBox = await Hive.openBox('login_credentials');
    Map<String, String> credentials = {};
    var credentialsRaw = await loginCredentialsBox.get(
      'account',
      defaultValue: {
        'email': '',
        'password': '',
        'device': 'Plan WZIM',
      },
    );
    credentialsRaw.forEach((key, value) {
      credentials[key] = value;
    });
    return credentials;
  }

  void setApiUrl(String apiUrl) {
    state = state.copyWith(apiUrl: apiUrl);
  }

  void saveCredentialsToStorage(Map<String, String> credentials) async {
    final loginCredentialsBox = await Hive.openBox('login_credentials');
    await loginCredentialsBox.put('account', credentials);
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
}

final settingsDataProvider =
    StateNotifierProvider<SettingsDataNotifier, Settings>(
  (ref) {
    return SettingsDataNotifier(
      Settings(),
    );
  },
);
