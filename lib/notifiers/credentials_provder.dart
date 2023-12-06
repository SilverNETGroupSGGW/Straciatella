import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/credentials_model.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/notifiers/settings_provider.dart';

class CredentialsNotifier extends StateNotifier<Credentials> {
  CredentialsNotifier({
    required this.ref,
  }) : super(
          Credentials(
            email: '',
            password: '',
            deviceToken: '',
          ),
        );

  final Ref ref;

  void clear() {
    state = Credentials(
      email: '',
      password: '',
      deviceToken: '',
    );
  }

  Future<void> init() async {
    await ref.read(settingsProvider.notifier).init();
    await loadCredentialsFromStorage();
  }

  Future<void> loadCredentialsFromStorage() async {
    final loginCredentialsBox = await Hive.openBox('login_credentials');
    state = await loginCredentialsBox.get(
      'credentials',
      defaultValue: Credentials(
        email: '',
        password: '',
        deviceToken: '',
      ),
    );
  }

  Future<bool> loginFromStorage() async {
    Settings settings = ref.watch(settingsProvider);
    return await login(settings.apiUrl) == true;
  }

  Future<bool> login(String url) async {
    if (state.email.isEmpty || state.password.isEmpty) {
      throw Exception('Credentials not provided');
    }
    state.deviceToken = 'Plan WZIM';
    final dio = Dio();
    Response response;
    try {
      response = await dio.post(
        '${url}/Tokens/login',
        data: state.toJson(),
      );
    } catch (e) {
      return false;
    }
    if (response.statusCode == 200) {
      var accessToken = response.data['accessToken'];
      ref.read(settingsProvider.notifier).setAccessToken(accessToken);
      return true;
    }
    return false;
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setDeviceToken(String deviceToken) {
    state = state.copyWith(deviceToken: deviceToken);
  }
}

final credentialsProvider =
    StateNotifierProvider<CredentialsNotifier, Credentials>(
  (ref) {
    return CredentialsNotifier(ref: ref);
  },
);
