// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AccountEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AccountEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(_$LoginRequestedImpl value,
          $Res Function(_$LoginRequestedImpl) then) =
      __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
      _$LoginRequestedImpl _value, $Res Function(_$LoginRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequestedImpl implements _LoginRequested {
  const _$LoginRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AccountEvent.loginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) {
    return loginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) {
    return loginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class _LoginRequested implements AccountEvent {
  const factory _LoginRequested(
      {required final String email,
      required final String password}) = _$LoginRequestedImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedImplCopyWith<$Res> {
  factory _$$LogoutRequestedImplCopyWith(_$LogoutRequestedImpl value,
          $Res Function(_$LogoutRequestedImpl) then) =
      __$$LogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
    implements _$$LogoutRequestedImplCopyWith<$Res> {
  __$$LogoutRequestedImplCopyWithImpl(
      _$LogoutRequestedImpl _value, $Res Function(_$LogoutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutRequestedImpl implements _LogoutRequested {
  const _$LogoutRequestedImpl();

  @override
  String toString() {
    return 'AccountEvent.logoutReqested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) {
    return logoutReqested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) {
    return logoutReqested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) {
    if (logoutReqested != null) {
      return logoutReqested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) {
    return logoutReqested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) {
    return logoutReqested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) {
    if (logoutReqested != null) {
      return logoutReqested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements AccountEvent {
  const factory _LogoutRequested() = _$LogoutRequestedImpl;
}

/// @nodoc
abstract class _$$RefreshTokenImplCopyWith<$Res> {
  factory _$$RefreshTokenImplCopyWith(
          _$RefreshTokenImpl value, $Res Function(_$RefreshTokenImpl) then) =
      __$$RefreshTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$RefreshTokenImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$RefreshTokenImpl>
    implements _$$RefreshTokenImplCopyWith<$Res> {
  __$$RefreshTokenImplCopyWithImpl(
      _$RefreshTokenImpl _value, $Res Function(_$RefreshTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenImpl(
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshTokenImpl implements _RefreshToken {
  const _$RefreshTokenImpl(this.refreshToken);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AccountEvent.refreshToken(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenImplCopyWith<_$RefreshTokenImpl> get copyWith =>
      __$$RefreshTokenImplCopyWithImpl<_$RefreshTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) {
    return refreshToken(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) {
    return refreshToken?.call(this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this.refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements AccountEvent {
  const factory _RefreshToken(final String refreshToken) = _$RefreshTokenImpl;

  String get refreshToken;
  @JsonKey(ignore: true)
  _$$RefreshTokenImplCopyWith<_$RefreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshTokenFromStorageRequestedImplCopyWith<$Res> {
  factory _$$RefreshTokenFromStorageRequestedImplCopyWith(
          _$RefreshTokenFromStorageRequestedImpl value,
          $Res Function(_$RefreshTokenFromStorageRequestedImpl) then) =
      __$$RefreshTokenFromStorageRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTokenFromStorageRequestedImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$RefreshTokenFromStorageRequestedImpl>
    implements _$$RefreshTokenFromStorageRequestedImplCopyWith<$Res> {
  __$$RefreshTokenFromStorageRequestedImplCopyWithImpl(
      _$RefreshTokenFromStorageRequestedImpl _value,
      $Res Function(_$RefreshTokenFromStorageRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshTokenFromStorageRequestedImpl
    implements _RefreshTokenFromStorageRequested {
  const _$RefreshTokenFromStorageRequestedImpl();

  @override
  String toString() {
    return 'AccountEvent.refreshTokenFromStorageRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenFromStorageRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) {
    return refreshTokenFromStorageRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) {
    return refreshTokenFromStorageRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) {
    if (refreshTokenFromStorageRequested != null) {
      return refreshTokenFromStorageRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) {
    return refreshTokenFromStorageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) {
    return refreshTokenFromStorageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) {
    if (refreshTokenFromStorageRequested != null) {
      return refreshTokenFromStorageRequested(this);
    }
    return orElse();
  }
}

abstract class _RefreshTokenFromStorageRequested implements AccountEvent {
  const factory _RefreshTokenFromStorageRequested() =
      _$RefreshTokenFromStorageRequestedImpl;
}

/// @nodoc
abstract class _$$SaveToStorageImplCopyWith<$Res> {
  factory _$$SaveToStorageImplCopyWith(
          _$SaveToStorageImpl value, $Res Function(_$SaveToStorageImpl) then) =
      __$$SaveToStorageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveToStorageImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$SaveToStorageImpl>
    implements _$$SaveToStorageImplCopyWith<$Res> {
  __$$SaveToStorageImplCopyWithImpl(
      _$SaveToStorageImpl _value, $Res Function(_$SaveToStorageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveToStorageImpl implements _SaveToStorage {
  const _$SaveToStorageImpl();

  @override
  String toString() {
    return 'AccountEvent.saveToStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveToStorageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginRequested,
    required TResult Function() logoutReqested,
    required TResult Function(String refreshToken) refreshToken,
    required TResult Function() refreshTokenFromStorageRequested,
    required TResult Function() saveToStorage,
  }) {
    return saveToStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function()? logoutReqested,
    TResult? Function(String refreshToken)? refreshToken,
    TResult? Function()? refreshTokenFromStorageRequested,
    TResult? Function()? saveToStorage,
  }) {
    return saveToStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginRequested,
    TResult Function()? logoutReqested,
    TResult Function(String refreshToken)? refreshToken,
    TResult Function()? refreshTokenFromStorageRequested,
    TResult Function()? saveToStorage,
    required TResult orElse(),
  }) {
    if (saveToStorage != null) {
      return saveToStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_LogoutRequested value) logoutReqested,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_RefreshTokenFromStorageRequested value)
        refreshTokenFromStorageRequested,
    required TResult Function(_SaveToStorage value) saveToStorage,
  }) {
    return saveToStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_LogoutRequested value)? logoutReqested,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult? Function(_SaveToStorage value)? saveToStorage,
  }) {
    return saveToStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_LogoutRequested value)? logoutReqested,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_RefreshTokenFromStorageRequested value)?
        refreshTokenFromStorageRequested,
    TResult Function(_SaveToStorage value)? saveToStorage,
    required TResult orElse(),
  }) {
    if (saveToStorage != null) {
      return saveToStorage(this);
    }
    return orElse();
  }
}

abstract class _SaveToStorage implements AccountEvent {
  const factory _SaveToStorage() = _$SaveToStorageImpl;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingFromStorageImplCopyWith<$Res> {
  factory _$$LoadingFromStorageImplCopyWith(_$LoadingFromStorageImpl value,
          $Res Function(_$LoadingFromStorageImpl) then) =
      __$$LoadingFromStorageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFromStorageImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoadingFromStorageImpl>
    implements _$$LoadingFromStorageImplCopyWith<$Res> {
  __$$LoadingFromStorageImplCopyWithImpl(_$LoadingFromStorageImpl _value,
      $Res Function(_$LoadingFromStorageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFromStorageImpl implements _LoadingFromStorage {
  const _$LoadingFromStorageImpl();

  @override
  String toString() {
    return 'AccountState.loadingFromStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingFromStorageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) {
    return loadingFromStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) {
    return loadingFromStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loadingFromStorage != null) {
      return loadingFromStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loadingFromStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loadingFromStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loadingFromStorage != null) {
      return loadingFromStorage(this);
    }
    return orElse();
  }
}

abstract class _LoadingFromStorage implements AccountState {
  const factory _LoadingFromStorage() = _$LoadingFromStorageImpl;
}

/// @nodoc
abstract class _$$LoggingInImplCopyWith<$Res> {
  factory _$$LoggingInImplCopyWith(
          _$LoggingInImpl value, $Res Function(_$LoggingInImpl) then) =
      __$$LoggingInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingInImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoggingInImpl>
    implements _$$LoggingInImplCopyWith<$Res> {
  __$$LoggingInImplCopyWithImpl(
      _$LoggingInImpl _value, $Res Function(_$LoggingInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingInImpl implements _LoggingIn {
  const _$LoggingInImpl();

  @override
  String toString() {
    return 'AccountState.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _LoggingIn implements AccountState {
  const factory _LoggingIn() = _$LoggingInImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$LoggedInImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl({required this.account});

  @override
  final Account account;

  @override
  String toString() {
    return 'AccountState.loggedIn(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) {
    return loggedIn(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) {
    return loggedIn?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AccountState {
  const factory _LoggedIn({required final Account account}) = _$LoggedInImpl;

  Account get account;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggingOutImplCopyWith<$Res> {
  factory _$$LoggingOutImplCopyWith(
          _$LoggingOutImpl value, $Res Function(_$LoggingOutImpl) then) =
      __$$LoggingOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingOutImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoggingOutImpl>
    implements _$$LoggingOutImplCopyWith<$Res> {
  __$$LoggingOutImplCopyWithImpl(
      _$LoggingOutImpl _value, $Res Function(_$LoggingOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingOutImpl implements _LoggingOut {
  const _$LoggingOutImpl();

  @override
  String toString() {
    return 'AccountState.loggingOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) {
    return loggingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) {
    return loggingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(this);
    }
    return orElse();
  }
}

abstract class _LoggingOut implements AccountState {
  const factory _LoggingOut() = _$LoggingOutImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AccountState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFromStorage,
    required TResult Function() loggingIn,
    required TResult Function(Account account) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFromStorage,
    TResult? Function()? loggingIn,
    TResult? Function(Account account)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFromStorage,
    TResult Function()? loggingIn,
    TResult Function(Account account)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingFromStorage value) loadingFromStorage,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingFromStorage value)? loadingFromStorage,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AccountState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}
