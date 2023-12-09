import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    required String name,
    required String email,
    required String accessToken,
    required String password,
    required String deviceToken,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
