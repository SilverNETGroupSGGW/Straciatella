import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:psggw/data/models/account/account.dart';
import 'package:psggw/data/repositories/auth_repo.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(_Initial()) {
    on<_LoginRequested>(_onLoginRequested);
    on<_LogoutRequested>(_onLogoutRequested);
    on<_RefreshToken>(_onRefreshToken);
    on<_RefreshTokenFromStorageRequested>(_onRefreshTokenFromStorageRequested);
    on<_SaveToStorage>(_onSaveToStorage);
  }

  void _onLoginRequested(
      _LoginRequested event, Emitter<AccountState> emit) async {
    emit(AccountState.loggingIn());
    await AuthRepo.login(event.email, event.password)
        .then((account) => emit(AccountState.loggedIn(account: account)))
        .catchError((_) => emit(AccountState.loggedOut()));
  }

  void _onRefreshToken(_RefreshToken event, Emitter<AccountState> emit) async {
    emit(AccountState.loggingIn());
    await AuthRepo.refreshToken(event.refreshToken)
        .then((account) => emit(AccountState.loggedIn(account: account)))
        .catchError((_) => emit(AccountState.loggedOut()));
  }

  void _onLogoutRequested(_LogoutRequested event, Emitter<AccountState> emit) {
    state.maybeMap(
      loggedIn: (state) {
        emit(AccountState.loggedOut());
      },
      orElse: () {},
    );
  }

  Future<void> _onRefreshTokenFromStorageRequested(
      _RefreshTokenFromStorageRequested event,
      Emitter<AccountState> emit) async {
    emit(AccountState.loadingFromStorage());
    final box = await Hive.openBox<Account>('account');
    Account? account = box.get(
      'account',
    );
    if (account == null) {
      emit(AccountState.loggedOut());
    } else {
      emit(AccountState.loggedIn(account: account));
    }
  }

  Future<void> _onSaveToStorage(
      _SaveToStorage event, Emitter<AccountState> emit) async {
    Account? account = state.maybeMap(
      loggedIn: (state) => state.account,
      orElse: () => null,
    );
    final box = await Hive.openBox<Account>('account');
    if (account != null) {
      box.put(
        'account',
        account,
      );
    }
  }
}
