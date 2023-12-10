// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRequestedImplCopyWith<$Res> {
  factory _$$LoadRequestedImplCopyWith(
          _$LoadRequestedImpl value, $Res Function(_$LoadRequestedImpl) then) =
      __$$LoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRequestedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LoadRequestedImpl>
    implements _$$LoadRequestedImplCopyWith<$Res> {
  __$$LoadRequestedImplCopyWithImpl(
      _$LoadRequestedImpl _value, $Res Function(_$LoadRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRequestedImpl implements _LoadRequested {
  const _$LoadRequestedImpl();

  @override
  String toString() {
    return 'SettingsEvent.loadRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadRequested implements SettingsEvent {
  const factory _LoadRequested() = _$LoadRequestedImpl;
}

/// @nodoc
abstract class _$$SaveRequestedImplCopyWith<$Res> {
  factory _$$SaveRequestedImplCopyWith(
          _$SaveRequestedImpl value, $Res Function(_$SaveRequestedImpl) then) =
      __$$SaveRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveRequestedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SaveRequestedImpl>
    implements _$$SaveRequestedImplCopyWith<$Res> {
  __$$SaveRequestedImplCopyWithImpl(
      _$SaveRequestedImpl _value, $Res Function(_$SaveRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveRequestedImpl implements _SaveRequested {
  const _$SaveRequestedImpl();

  @override
  String toString() {
    return 'SettingsEvent.saveRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return saveRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return saveRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (saveRequested != null) {
      return saveRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return saveRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return saveRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (saveRequested != null) {
      return saveRequested(this);
    }
    return orElse();
  }
}

abstract class _SaveRequested implements SettingsEvent {
  const factory _SaveRequested() = _$SaveRequestedImpl;
}

/// @nodoc
abstract class _$$LocaleChangedImplCopyWith<$Res> {
  factory _$$LocaleChangedImplCopyWith(
          _$LocaleChangedImpl value, $Res Function(_$LocaleChangedImpl) then) =
      __$$LocaleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$LocaleChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LocaleChangedImpl>
    implements _$$LocaleChangedImplCopyWith<$Res> {
  __$$LocaleChangedImplCopyWithImpl(
      _$LocaleChangedImpl _value, $Res Function(_$LocaleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$LocaleChangedImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleChangedImpl implements _LocaleChanged {
  const _$LocaleChangedImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'SettingsEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleChangedImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleChangedImplCopyWith<_$LocaleChangedImpl> get copyWith =>
      __$$LocaleChangedImplCopyWithImpl<_$LocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChanged implements SettingsEvent {
  const factory _LocaleChanged({required final Locale locale}) =
      _$LocaleChangedImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$LocaleChangedImplCopyWith<_$LocaleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AutoThemeModeChangedImplCopyWith<$Res> {
  factory _$$AutoThemeModeChangedImplCopyWith(_$AutoThemeModeChangedImpl value,
          $Res Function(_$AutoThemeModeChangedImpl) then) =
      __$$AutoThemeModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuto});
}

/// @nodoc
class __$$AutoThemeModeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$AutoThemeModeChangedImpl>
    implements _$$AutoThemeModeChangedImplCopyWith<$Res> {
  __$$AutoThemeModeChangedImplCopyWithImpl(_$AutoThemeModeChangedImpl _value,
      $Res Function(_$AutoThemeModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuto = null,
  }) {
    return _then(_$AutoThemeModeChangedImpl(
      null == isAuto
          ? _value.isAuto
          : isAuto // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AutoThemeModeChangedImpl implements _AutoThemeModeChanged {
  const _$AutoThemeModeChangedImpl(this.isAuto);

  @override
  final bool isAuto;

  @override
  String toString() {
    return 'SettingsEvent.autoThemeModeChanged(isAuto: $isAuto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoThemeModeChangedImpl &&
            (identical(other.isAuto, isAuto) || other.isAuto == isAuto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoThemeModeChangedImplCopyWith<_$AutoThemeModeChangedImpl>
      get copyWith =>
          __$$AutoThemeModeChangedImplCopyWithImpl<_$AutoThemeModeChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return autoThemeModeChanged(isAuto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return autoThemeModeChanged?.call(isAuto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (autoThemeModeChanged != null) {
      return autoThemeModeChanged(isAuto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return autoThemeModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return autoThemeModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (autoThemeModeChanged != null) {
      return autoThemeModeChanged(this);
    }
    return orElse();
  }
}

abstract class _AutoThemeModeChanged implements SettingsEvent {
  const factory _AutoThemeModeChanged(final bool isAuto) =
      _$AutoThemeModeChangedImpl;

  bool get isAuto;
  @JsonKey(ignore: true)
  _$$AutoThemeModeChangedImplCopyWith<_$AutoThemeModeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeModeChangedImplCopyWith<$Res> {
  factory _$$ThemeModeChangedImplCopyWith(_$ThemeModeChangedImpl value,
          $Res Function(_$ThemeModeChangedImpl) then) =
      __$$ThemeModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ThemeModeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ThemeModeChangedImpl>
    implements _$$ThemeModeChangedImplCopyWith<$Res> {
  __$$ThemeModeChangedImplCopyWithImpl(_$ThemeModeChangedImpl _value,
      $Res Function(_$ThemeModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeModeChangedImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeModeChangedImpl implements _ThemeModeChanged {
  const _$ThemeModeChangedImpl({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsEvent.darkThemeModeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModeChangedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeModeChangedImplCopyWith<_$ThemeModeChangedImpl> get copyWith =>
      __$$ThemeModeChangedImplCopyWithImpl<_$ThemeModeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return darkThemeModeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return darkThemeModeChanged?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (darkThemeModeChanged != null) {
      return darkThemeModeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return darkThemeModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return darkThemeModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (darkThemeModeChanged != null) {
      return darkThemeModeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeChanged implements SettingsEvent {
  const factory _ThemeModeChanged({required final ThemeMode themeMode}) =
      _$ThemeModeChangedImpl;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ThemeModeChangedImplCopyWith<_$ThemeModeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeColorChangedImplCopyWith<$Res> {
  factory _$$ThemeColorChangedImplCopyWith(_$ThemeColorChangedImpl value,
          $Res Function(_$ThemeColorChangedImpl) then) =
      __$$ThemeColorChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color themeColor});
}

/// @nodoc
class __$$ThemeColorChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ThemeColorChangedImpl>
    implements _$$ThemeColorChangedImplCopyWith<$Res> {
  __$$ThemeColorChangedImplCopyWithImpl(_$ThemeColorChangedImpl _value,
      $Res Function(_$ThemeColorChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeColor = null,
  }) {
    return _then(_$ThemeColorChangedImpl(
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ThemeColorChangedImpl implements _ThemeColorChanged {
  const _$ThemeColorChangedImpl({required this.themeColor});

  @override
  final Color themeColor;

  @override
  String toString() {
    return 'SettingsEvent.themeColorChanged(themeColor: $themeColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeColorChangedImpl &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeColorChangedImplCopyWith<_$ThemeColorChangedImpl> get copyWith =>
      __$$ThemeColorChangedImplCopyWithImpl<_$ThemeColorChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return themeColorChanged(themeColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return themeColorChanged?.call(themeColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (themeColorChanged != null) {
      return themeColorChanged(themeColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return themeColorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return themeColorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (themeColorChanged != null) {
      return themeColorChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeColorChanged implements SettingsEvent {
  const factory _ThemeColorChanged({required final Color themeColor}) =
      _$ThemeColorChangedImpl;

  Color get themeColor;
  @JsonKey(ignore: true)
  _$$ThemeColorChangedImplCopyWith<_$ThemeColorChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DebugModeChangedImplCopyWith<$Res> {
  factory _$$DebugModeChangedImplCopyWith(_$DebugModeChangedImpl value,
          $Res Function(_$DebugModeChangedImpl) then) =
      __$$DebugModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDebugMode});
}

/// @nodoc
class __$$DebugModeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$DebugModeChangedImpl>
    implements _$$DebugModeChangedImplCopyWith<$Res> {
  __$$DebugModeChangedImplCopyWithImpl(_$DebugModeChangedImpl _value,
      $Res Function(_$DebugModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDebugMode = null,
  }) {
    return _then(_$DebugModeChangedImpl(
      isDebugMode: null == isDebugMode
          ? _value.isDebugMode
          : isDebugMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DebugModeChangedImpl implements _DebugModeChanged {
  const _$DebugModeChangedImpl({required this.isDebugMode});

  @override
  final bool isDebugMode;

  @override
  String toString() {
    return 'SettingsEvent.debugModeChanged(isDebugMode: $isDebugMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebugModeChangedImpl &&
            (identical(other.isDebugMode, isDebugMode) ||
                other.isDebugMode == isDebugMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDebugMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebugModeChangedImplCopyWith<_$DebugModeChangedImpl> get copyWith =>
      __$$DebugModeChangedImplCopyWithImpl<_$DebugModeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return debugModeChanged(isDebugMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return debugModeChanged?.call(isDebugMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (debugModeChanged != null) {
      return debugModeChanged(isDebugMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return debugModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return debugModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (debugModeChanged != null) {
      return debugModeChanged(this);
    }
    return orElse();
  }
}

abstract class _DebugModeChanged implements SettingsEvent {
  const factory _DebugModeChanged({required final bool isDebugMode}) =
      _$DebugModeChangedImpl;

  bool get isDebugMode;
  @JsonKey(ignore: true)
  _$$DebugModeChangedImplCopyWith<_$DebugModeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstRunChangedImplCopyWith<$Res> {
  factory _$$FirstRunChangedImplCopyWith(_$FirstRunChangedImpl value,
          $Res Function(_$FirstRunChangedImpl) then) =
      __$$FirstRunChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool completed});
}

/// @nodoc
class __$$FirstRunChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$FirstRunChangedImpl>
    implements _$$FirstRunChangedImplCopyWith<$Res> {
  __$$FirstRunChangedImplCopyWithImpl(
      _$FirstRunChangedImpl _value, $Res Function(_$FirstRunChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
  }) {
    return _then(_$FirstRunChangedImpl(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FirstRunChangedImpl implements _FirstRunChanged {
  const _$FirstRunChangedImpl({required this.completed});

  @override
  final bool completed;

  @override
  String toString() {
    return 'SettingsEvent.firstRunEnded(completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstRunChangedImpl &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstRunChangedImplCopyWith<_$FirstRunChangedImpl> get copyWith =>
      __$$FirstRunChangedImplCopyWithImpl<_$FirstRunChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function() saveRequested,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(bool isAuto) autoThemeModeChanged,
    required TResult Function(ThemeMode themeMode) darkThemeModeChanged,
    required TResult Function(Color themeColor) themeColorChanged,
    required TResult Function(bool isDebugMode) debugModeChanged,
    required TResult Function(bool completed) firstRunEnded,
  }) {
    return firstRunEnded(completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function()? saveRequested,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(bool isAuto)? autoThemeModeChanged,
    TResult? Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult? Function(Color themeColor)? themeColorChanged,
    TResult? Function(bool isDebugMode)? debugModeChanged,
    TResult? Function(bool completed)? firstRunEnded,
  }) {
    return firstRunEnded?.call(completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function()? saveRequested,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(bool isAuto)? autoThemeModeChanged,
    TResult Function(ThemeMode themeMode)? darkThemeModeChanged,
    TResult Function(Color themeColor)? themeColorChanged,
    TResult Function(bool isDebugMode)? debugModeChanged,
    TResult Function(bool completed)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (firstRunEnded != null) {
      return firstRunEnded(completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRequested value) loadRequested,
    required TResult Function(_SaveRequested value) saveRequested,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_AutoThemeModeChanged value) autoThemeModeChanged,
    required TResult Function(_ThemeModeChanged value) darkThemeModeChanged,
    required TResult Function(_ThemeColorChanged value) themeColorChanged,
    required TResult Function(_DebugModeChanged value) debugModeChanged,
    required TResult Function(_FirstRunChanged value) firstRunEnded,
  }) {
    return firstRunEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRequested value)? loadRequested,
    TResult? Function(_SaveRequested value)? saveRequested,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult? Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult? Function(_ThemeColorChanged value)? themeColorChanged,
    TResult? Function(_DebugModeChanged value)? debugModeChanged,
    TResult? Function(_FirstRunChanged value)? firstRunEnded,
  }) {
    return firstRunEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRequested value)? loadRequested,
    TResult Function(_SaveRequested value)? saveRequested,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_AutoThemeModeChanged value)? autoThemeModeChanged,
    TResult Function(_ThemeModeChanged value)? darkThemeModeChanged,
    TResult Function(_ThemeColorChanged value)? themeColorChanged,
    TResult Function(_DebugModeChanged value)? debugModeChanged,
    TResult Function(_FirstRunChanged value)? firstRunEnded,
    required TResult orElse(),
  }) {
    if (firstRunEnded != null) {
      return firstRunEnded(this);
    }
    return orElse();
  }
}

abstract class _FirstRunChanged implements SettingsEvent {
  const factory _FirstRunChanged({required final bool completed}) =
      _$FirstRunChangedImpl;

  bool get completed;
  @JsonKey(ignore: true)
  _$$FirstRunChangedImplCopyWith<_$FirstRunChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Settings settings) loaded,
    required TResult Function() saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Settings settings)? loaded,
    TResult? Function()? saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Settings settings)? loaded,
    TResult Function()? saving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Saving value) saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Saving value)? saving,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Saving value)? saving,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

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
    extends _$SettingsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SettingsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(Settings settings) loaded,
    required TResult Function() saving,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Settings settings)? loaded,
    TResult? Function()? saving,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Settings settings)? loaded,
    TResult Function()? saving,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Saving value) saving,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Saving value)? saving,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Saving value)? saving,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Settings settings) loaded,
    required TResult Function() saving,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Settings settings)? loaded,
    TResult? Function()? saving,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Settings settings)? loaded,
    TResult Function()? saving,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Saving value) saving,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Saving value)? saving,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Saving value)? saving,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SettingsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$LoadedImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.settings});

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsState.loaded(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Settings settings) loaded,
    required TResult Function() saving,
  }) {
    return loaded(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Settings settings)? loaded,
    TResult? Function()? saving,
  }) {
    return loaded?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Settings settings)? loaded,
    TResult Function()? saving,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Saving value) saving,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Saving value)? saving,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Saving value)? saving,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SettingsState {
  const factory _Loaded({required final Settings settings}) = _$LoadedImpl;

  Settings get settings;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> {
  factory _$$SavingImplCopyWith(
          _$SavingImpl value, $Res Function(_$SavingImpl) then) =
      __$$SavingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SavingImpl>
    implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(
      _$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingImpl implements _Saving {
  const _$SavingImpl();

  @override
  String toString() {
    return 'SettingsState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Settings settings) loaded,
    required TResult Function() saving,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Settings settings)? loaded,
    TResult? Function()? saving,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Settings settings)? loaded,
    TResult Function()? saving,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Saving value) saving,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Saving value)? saving,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Saving value)? saving,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements SettingsState {
  const factory _Saving() = _$SavingImpl;
}
