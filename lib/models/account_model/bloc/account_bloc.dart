import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:psggw/models/account_model/account.dart';
import 'package:dio/dio.dart' as dio;

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(_Initial()) {
    on<_ApiURLChanged>(_onApiURLChanged);
    on<_LoginRequested>(_onLoginRequested);
    on<_LogoutRequested>(_onLogoutRequested);
    on<_refreshToken>(_onRefreshToken);
    on<_RefreshTokenFromStorageRequested>(_onRefreshTokenFromStorageRequested);
    on<_SaveToStorage>(_onSaveToStorage);
  }

  void _onApiURLChanged(_ApiURLChanged event, Emitter<AccountState> emit) {
    state.maybeMap(
      loggedIn: (state) {
        emit(state.copyWith(
            account: state.account.copyWith(apiURL: event.apiURL)));
      },
      orElse: () {},
    );
  }

  void _onLoginRequested(
      _LoginRequested event, Emitter<AccountState> emit) async {
    emit(AccountState.loggingIn());
    try {
      dio.Response response = await dio.Dio().post(
        event.apiURL + '/Tokens/login',
        data: {
          'email': event.email,
          'password': event.password,
          'deviceToken': event.deviceToken,
        },
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        data['apiURL'] = event.apiURL;
        emit(AccountState.loggedIn(account: Account.fromJson(data)));
      } else {
        emit(AccountState.loggedOut());
      }
    } catch (e) {
      emit(AccountState.loggedOut());
    }
  }

  void _onRefreshToken(_refreshToken event, Emitter<AccountState> emit) async {
    emit(AccountState.loggingIn());
    String apiURL = state.maybeMap(
      loggedIn: (state) => state.account.apiURL,
      orElse: () => '',
    );
    try {
      dio.Response response = await dio.Dio().post(
        apiURL + '/refresh',
        data: {
          'refresh_token': event.refreshToken,
        },
      );
      if (response.statusCode == 200) {
        emit(AccountState.loggedIn(account: Account.fromJson(response.data)));
      } else {
        emit(AccountState.loggedOut());
      }
    } catch (e) {
      emit(AccountState.loggedOut());
    }
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
