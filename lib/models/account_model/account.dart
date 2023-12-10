import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const Account._();
  factory Account({
    required String apiURL,
    required String accessToken,
    required String refreshToken,
    required String deviceToken,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  factory Account.empty() => Account(
        apiURL: '',
        accessToken: '',
        refreshToken: '',
        deviceToken: Uuid().v8(),
      );

  Future<void> saveToStorage() async {}
}
