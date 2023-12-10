// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get isFirstRun => throw _privateConstructorUsedError;
  bool get isDebugMode => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get themeColor => throw _privateConstructorUsedError;
  @LocaleConverter()
  Locale get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      bool isFirstRun,
      bool isDebugMode,
      @ColorConverter() Color themeColor,
      @LocaleConverter() Locale locale});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? isFirstRun = null,
    Object? isDebugMode = null,
    Object? themeColor = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isFirstRun: null == isFirstRun
          ? _value.isFirstRun
          : isFirstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebugMode: null == isDebugMode
          ? _value.isDebugMode
          : isDebugMode // ignore: cast_nullable_to_non_nullable
              as bool,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as Color,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsImplCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      bool isFirstRun,
      bool isDebugMode,
      @ColorConverter() Color themeColor,
      @LocaleConverter() Locale locale});
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? isFirstRun = null,
    Object? isDebugMode = null,
    Object? themeColor = null,
    Object? locale = null,
  }) {
    return _then(_$SettingsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isFirstRun: null == isFirstRun
          ? _value.isFirstRun
          : isFirstRun // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebugMode: null == isDebugMode
          ? _value.isDebugMode
          : isDebugMode // ignore: cast_nullable_to_non_nullable
              as bool,
      themeColor: null == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as Color,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsImpl extends _Settings {
  _$SettingsImpl(
      {required this.themeMode,
      required this.isFirstRun,
      required this.isDebugMode,
      @ColorConverter() required this.themeColor,
      @LocaleConverter() required this.locale})
      : super._();

  factory _$SettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsImplFromJson(json);

  @override
  final ThemeMode themeMode;
  @override
  final bool isFirstRun;
  @override
  final bool isDebugMode;
  @override
  @ColorConverter()
  final Color themeColor;
  @override
  @LocaleConverter()
  final Locale locale;

  @override
  String toString() {
    return 'Settings(themeMode: $themeMode, isFirstRun: $isFirstRun, isDebugMode: $isDebugMode, themeColor: $themeColor, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.isFirstRun, isFirstRun) ||
                other.isFirstRun == isFirstRun) &&
            (identical(other.isDebugMode, isDebugMode) ||
                other.isDebugMode == isDebugMode) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, themeMode, isFirstRun, isDebugMode, themeColor, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsImplToJson(
      this,
    );
  }
}

abstract class _Settings extends Settings {
  factory _Settings(
      {required final ThemeMode themeMode,
      required final bool isFirstRun,
      required final bool isDebugMode,
      @ColorConverter() required final Color themeColor,
      @LocaleConverter() required final Locale locale}) = _$SettingsImpl;
  _Settings._() : super._();

  factory _Settings.fromJson(Map<String, dynamic> json) =
      _$SettingsImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  bool get isFirstRun;
  @override
  bool get isDebugMode;
  @override
  @ColorConverter()
  Color get themeColor;
  @override
  @LocaleConverter()
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
