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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  @HiveField(0, defaultValue: ThemeMode.system)
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: ThemeType.custom)
  ThemeType get themeType => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: true)
  bool get isFirstRun => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: kDebugMode)
  bool get isDebugMode => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: Colors.red)
  Color get themeColor => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: false)
  bool get isFabHidden => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {@HiveField(0, defaultValue: ThemeMode.system) ThemeMode themeMode,
      @HiveField(4, defaultValue: ThemeType.custom) ThemeType themeType,
      @HiveField(1, defaultValue: true) bool isFirstRun,
      @HiveField(2, defaultValue: kDebugMode) bool isDebugMode,
      @HiveField(3, defaultValue: Colors.red) Color themeColor,
      @HiveField(5, defaultValue: false) bool isFabHidden});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? themeType = null,
    Object? isFirstRun = null,
    Object? isDebugMode = null,
    Object? themeColor = null,
    Object? isFabHidden = null,
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
      isFabHidden: null == isFabHidden
          ? _value.isFabHidden
          : isFabHidden // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {@HiveField(0, defaultValue: ThemeMode.system) ThemeMode themeMode,
      @HiveField(4, defaultValue: ThemeType.custom) ThemeType themeType,
      @HiveField(1, defaultValue: true) bool isFirstRun,
      @HiveField(2, defaultValue: kDebugMode) bool isDebugMode,
      @HiveField(3, defaultValue: Colors.red) Color themeColor,
      @HiveField(5, defaultValue: false) bool isFabHidden});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? themeType = null,
    Object? isFirstRun = null,
    Object? isDebugMode = null,
    Object? themeColor = null,
    Object? isFabHidden = null,
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
      isFabHidden: null == isFabHidden
          ? _value.isFabHidden
          : isFabHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveTypeIds.settingsState, adapterName: "SettingsStateAdapter")
class _$SettingsStateImpl extends _SettingsState with DiagnosticableTreeMixin {
  _$SettingsStateImpl(
      {@HiveField(0, defaultValue: ThemeMode.system)
      this.themeMode = ThemeMode.system,
      @HiveField(4, defaultValue: ThemeType.custom)
      this.themeType = ThemeType.custom,
      @HiveField(1, defaultValue: true) this.isFirstRun = true,
      @HiveField(2, defaultValue: kDebugMode) this.isDebugMode = kDebugMode,
      @HiveField(3, defaultValue: Colors.red) this.themeColor = Colors.red,
      @HiveField(5, defaultValue: false) this.isFabHidden = false})
      : super._();

  @override
  @JsonKey()
  @HiveField(0, defaultValue: ThemeMode.system)
  final ThemeMode themeMode;
  @override
  @JsonKey()
  @HiveField(4, defaultValue: ThemeType.custom)
  final ThemeType themeType;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: true)
  final bool isFirstRun;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: kDebugMode)
  final bool isDebugMode;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: Colors.red)
  final Color themeColor;
  @override
  @JsonKey()
  @HiveField(5, defaultValue: false)
  final bool isFabHidden;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(themeMode: $themeMode, themeType: $themeType, isFirstRun: $isFirstRun, isDebugMode: $isDebugMode, themeColor: $themeColor, isFabHidden: $isFabHidden)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('themeType', themeType))
      ..add(DiagnosticsProperty('isFirstRun', isFirstRun))
      ..add(DiagnosticsProperty('isDebugMode', isDebugMode))
      ..add(DiagnosticsProperty('themeColor', themeColor))
      ..add(DiagnosticsProperty('isFabHidden', isFabHidden));
  }

  @override
  bool operator ==(Object other) {
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
                other.themeColor == themeColor) &&
            (identical(other.isFabHidden, isFabHidden) ||
                other.isFabHidden == isFabHidden));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, themeType, isFirstRun,
      isDebugMode, themeColor, isFabHidden);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  factory _SettingsState(
      {@HiveField(0, defaultValue: ThemeMode.system) final ThemeMode themeMode,
      @HiveField(4, defaultValue: ThemeType.custom) final ThemeType themeType,
      @HiveField(1, defaultValue: true) final bool isFirstRun,
      @HiveField(2, defaultValue: kDebugMode) final bool isDebugMode,
      @HiveField(3, defaultValue: Colors.red) final Color themeColor,
      @HiveField(5, defaultValue: false)
      final bool isFabHidden}) = _$SettingsStateImpl;
  _SettingsState._() : super._();

  @override
  @HiveField(0, defaultValue: ThemeMode.system)
  ThemeMode get themeMode;
  @override
  @HiveField(4, defaultValue: ThemeType.custom)
  ThemeType get themeType;
  @override
  @HiveField(1, defaultValue: true)
  bool get isFirstRun;
  @override
  @HiveField(2, defaultValue: kDebugMode)
  bool get isDebugMode;
  @override
  @HiveField(3, defaultValue: Colors.red)
  Color get themeColor;
  @override
  @HiveField(5, defaultValue: false)
  bool get isFabHidden;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
