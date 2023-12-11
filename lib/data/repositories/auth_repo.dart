import 'package:psggw/data/models/account/account.dart';
import 'package:psggw/data/providers/auth_api.dart';

class AuthRepo {
  static Future<Account> login(String email, String password) async {
    return AuthApi.login(email, password).then(
      (response) => Account.fromJson(response.data),
    );
  }

  static Future<Account> refreshToken(String refreshToken) async {
    return AuthApi.refreshToken(refreshToken).then(
      (response) => Account.fromJson(response.data),
    );
  }
}
