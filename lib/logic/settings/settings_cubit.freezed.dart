// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  @HiveField(0)
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @HiveField(4)
  ThemeType get themeType => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get isFirstRun => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get isDebugMode => throw _privateConstructorUsedError;
  @HiveField(3)
  Color get themeColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {@HiveField(0) ThemeMode themeMode,
      @HiveField(4) ThemeType themeType,
      @HiveField(1) bool isFirstRun,
      @HiveField(2) bool isDebugMode,
      @HiveField(3) Color themeColor});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? themeType = null,
    Object? isFirstRun = null,
    Object? isDebugMode = null,
    Object? themeColor = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) ThemeMode themeMode,
      @HiveField(4) ThemeType themeType,
      @HiveField(1) bool isFirstRun,
      @HiveField(2) bool isDebugMode,
      @HiveField(3) Color themeColor});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? themeType = null,
    Object? isFirstRun = null,
    Object? isDebugMode = null,
    Object? themeColor = null,
  }) {
    return _then(_$SettingsStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
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
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveTypeIds.settingsState, adapterName: "SettingsStateAdapter")
class _$SettingsStateImpl extends _SettingsState {
  _$SettingsStateImpl(
      {@HiveField(0) this.themeMode = ThemeMode.system,
      @HiveField(4) this.themeType = ThemeType.normal,
      @HiveField(1) this.isFirstRun = true,
      @HiveField(2) this.isDebugMode = false,
      @HiveField(3) this.themeColor = Colors.red})
      : super._();

  @override
  @JsonKey()
  @HiveField(0)
  final ThemeMode themeMode;
  @override
  @JsonKey()
  @HiveField(4)
  final ThemeType themeType;
  @override
  @JsonKey()
  @HiveField(1)
  final bool isFirstRun;
  @override
  @JsonKey()
  @HiveField(2)
  final bool isDebugMode;
  @override
  @JsonKey()
  @HiveField(3)
  final Color themeColor;

  @override
  String toString() {
    return 'SettingsState(themeMode: $themeMode, themeType: $themeType, isFirstRun: $isFirstRun, isDebugMode: $isDebugMode, themeColor: $themeColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType) &&
            (identical(other.isFirstRun, isFirstRun) ||
                other.isFirstRun == isFirstRun) &&
            (identical(other.isDebugMode, isDebugMode) ||
                other.isDebugMode == isDebugMode) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, themeMode, themeType, isFirstRun, isDebugMode, themeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  factory _SettingsState(
      {@HiveField(0) final ThemeMode themeMode,
      @HiveField(4) final ThemeType themeType,
      @HiveField(1) final bool isFirstRun,
      @HiveField(2) final bool isDebugMode,
      @HiveField(3) final Color themeColor}) = _$SettingsStateImpl;
  _SettingsState._() : super._();

  @override
  @HiveField(0)
  ThemeMode get themeMode;
  @override
  @HiveField(4)
  ThemeType get themeType;
  @override
  @HiveField(1)
  bool get isFirstRun;
  @override
  @HiveField(2)
  bool get isDebugMode;
  @override
  @HiveField(3)
  Color get themeColor;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
