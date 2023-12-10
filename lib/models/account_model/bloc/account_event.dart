part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;
  const factory AccountEvent.loginRequested({
    required String email,
    required String password,
  }) = _LoginRequested;
  const factory AccountEvent.logoutReqested() = _LogoutRequested;
  const factory AccountEvent.apiURLChanged(String apiURL) = _ApiURLChanged;
  const factory AccountEvent.refreshToken(
    String refreshToken,
  ) = _refreshToken;

  const factory AccountEvent.refreshTokenFromStorageRequested() =
      _RefreshTokenFromStorageRequested;
}
