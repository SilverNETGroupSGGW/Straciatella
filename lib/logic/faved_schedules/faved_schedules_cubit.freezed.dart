// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faved_schedules_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavedSchedulesState {
  @HiveField(0)
  List<({String id, ScheduleType type})> get favedSchedules =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  ({String id, ScheduleType type})? get selectedSchedule =>
      throw _privateConstructorUsedError;

  /// Create a copy of FavedSchedulesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavedSchedulesStateCopyWith<FavedSchedulesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavedSchedulesStateCopyWith<$Res> {
  factory $FavedSchedulesStateCopyWith(
          FavedSchedulesState value, $Res Function(FavedSchedulesState) then) =
      _$FavedSchedulesStateCopyWithImpl<$Res, FavedSchedulesState>;
  @useResult
  $Res call(
      {@HiveField(0) List<({String id, ScheduleType type})> favedSchedules,
      @HiveField(1) ({String id, ScheduleType type})? selectedSchedule});
}

/// @nodoc
class _$FavedSchedulesStateCopyWithImpl<$Res, $Val extends FavedSchedulesState>
    implements $FavedSchedulesStateCopyWith<$Res> {
  _$FavedSchedulesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavedSchedulesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favedSchedules = null,
    Object? selectedSchedule = freezed,
  }) {
    return _then(_value.copyWith(
      favedSchedules: null == favedSchedules
          ? _value.favedSchedules
          : favedSchedules // ignore: cast_nullable_to_non_nullable
              as List<({String id, ScheduleType type})>,
      selectedSchedule: freezed == selectedSchedule
          ? _value.selectedSchedule
          : selectedSchedule // ignore: cast_nullable_to_non_nullable
              as ({String id, ScheduleType type})?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavedSchedulesStateImplCopyWith<$Res>
    implements $FavedSchedulesStateCopyWith<$Res> {
  factory _$$FavedSchedulesStateImplCopyWith(_$FavedSchedulesStateImpl value,
          $Res Function(_$FavedSchedulesStateImpl) then) =
      __$$FavedSchedulesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<({String id, ScheduleType type})> favedSchedules,
      @HiveField(1) ({String id, ScheduleType type})? selectedSchedule});
}

/// @nodoc
class __$$FavedSchedulesStateImplCopyWithImpl<$Res>
    extends _$FavedSchedulesStateCopyWithImpl<$Res, _$FavedSchedulesStateImpl>
    implements _$$FavedSchedulesStateImplCopyWith<$Res> {
  __$$FavedSchedulesStateImplCopyWithImpl(_$FavedSchedulesStateImpl _value,
      $Res Function(_$FavedSchedulesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavedSchedulesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favedSchedules = null,
    Object? selectedSchedule = freezed,
  }) {
    return _then(_$FavedSchedulesStateImpl(
      favedSchedules: null == favedSchedules
          ? _value._favedSchedules
          : favedSchedules // ignore: cast_nullable_to_non_nullable
              as List<({String id, ScheduleType type})>,
      selectedSchedule: freezed == selectedSchedule
          ? _value.selectedSchedule
          : selectedSchedule // ignore: cast_nullable_to_non_nullable
              as ({String id, ScheduleType type})?,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveTypeIds.favedSchedulesState,
    adapterName: "FavedSchedulesStateAdapter")
class _$FavedSchedulesStateImpl extends _FavedSchedulesState
    with DiagnosticableTreeMixin {
  _$FavedSchedulesStateImpl(
      {@HiveField(0)
      final List<({String id, ScheduleType type})> favedSchedules = const [],
      @HiveField(1) this.selectedSchedule = null})
      : _favedSchedules = favedSchedules,
        super._();

  final List<({String id, ScheduleType type})> _favedSchedules;
  @override
  @JsonKey()
  @HiveField(0)
  List<({String id, ScheduleType type})> get favedSchedules {
    if (_favedSchedules is EqualUnmodifiableListView) return _favedSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favedSchedules);
  }

  @override
  @JsonKey()
  @HiveField(1)
  final ({String id, ScheduleType type})? selectedSchedule;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavedSchedulesState(favedSchedules: $favedSchedules, selectedSchedule: $selectedSchedule)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavedSchedulesState'))
      ..add(DiagnosticsProperty('favedSchedules', favedSchedules))
      ..add(DiagnosticsProperty('selectedSchedule', selectedSchedule));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavedSchedulesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favedSchedules, _favedSchedules) &&
            (identical(other.selectedSchedule, selectedSchedule) ||
                other.selectedSchedule == selectedSchedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favedSchedules), selectedSchedule);

  /// Create a copy of FavedSchedulesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavedSchedulesStateImplCopyWith<_$FavedSchedulesStateImpl> get copyWith =>
      __$$FavedSchedulesStateImplCopyWithImpl<_$FavedSchedulesStateImpl>(
          this, _$identity);
}

abstract class _FavedSchedulesState extends FavedSchedulesState {
  factory _FavedSchedulesState(
          {@HiveField(0)
          final List<({String id, ScheduleType type})> favedSchedules,
          @HiveField(1)
          final ({String id, ScheduleType type})? selectedSchedule}) =
      _$FavedSchedulesStateImpl;
  _FavedSchedulesState._() : super._();

  @override
  @HiveField(0)
  List<({String id, ScheduleType type})> get favedSchedules;
  @override
  @HiveField(1)
  ({String id, ScheduleType type})? get selectedSchedule;

  /// Create a copy of FavedSchedulesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavedSchedulesStateImplCopyWith<_$FavedSchedulesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
