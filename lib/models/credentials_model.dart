import 'package:hive_flutter/hive_flutter.dart';

class Credentials {
  String email;
  String password;
  String deviceToken;

  Credentials({
    required this.email,
    required this.password,
    required this.deviceToken,
  });

  Credentials copyWith({
    String? email,
    String? password,
    String? deviceToken,
  }) {
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
      deviceToken: deviceToken ?? this.deviceToken,
    );
  }

  Future<void> saveToStorage() async {
    final loginCredentialsBox = await Hive.openBox('login_credentials');
    await loginCredentialsBox.put('account', toJson());
  }

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return Credentials(
      email: json['email'],
      password: json['password'],
      deviceToken: json['deviceToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'deviceToken': deviceToken,
    };
  }
}
