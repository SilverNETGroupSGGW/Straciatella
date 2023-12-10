part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loadingFromStorage() = _LoadingFromStorage;
  const factory AccountState.loggingIn() = _LoggingIn;
  const factory AccountState.loggedIn({
    required Account account,
  }) = _LoggedIn;
  const factory AccountState.loggingOut() = _LoggingOut;
  const factory AccountState.loggedOut() = _LoggedOut;
}
