import 'package:dio/dio.dart';
import 'package:psggw/constants.dart';

class AuthApi {
  static final _dio = Dio();

  static Future<Response> login(String email, String password) async {
    return _dio.post(
      apiUrl + '/Tokens/login',
      data: {
        'email': email,
        'password': password,
      },
    );
  }

  static Future<Response> refreshToken(String refreshToken) async {
    return _dio.post(
      apiUrl + '/refresh',
      data: {
        'refresh_token': refreshToken,
      },
    );
  }
}
