// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_schedules_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedSchedulesState {
  @HiveField(0)
  Set<Schedule> get savedSchedules => throw _privateConstructorUsedError;
  @HiveField(1)
  Schedule? get selectedSchedule => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedSchedulesStateCopyWith<SavedSchedulesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSchedulesStateCopyWith<$Res> {
  factory $SavedSchedulesStateCopyWith(
          SavedSchedulesState value, $Res Function(SavedSchedulesState) then) =
      _$SavedSchedulesStateCopyWithImpl<$Res, SavedSchedulesState>;
  @useResult
  $Res call(
      {@HiveField(0) Set<Schedule> savedSchedules,
      @HiveField(1) Schedule? selectedSchedule});

  $ScheduleCopyWith<$Res>? get selectedSchedule;
}

/// @nodoc
class _$SavedSchedulesStateCopyWithImpl<$Res, $Val extends SavedSchedulesState>
    implements $SavedSchedulesStateCopyWith<$Res> {
  _$SavedSchedulesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedSchedules = null,
    Object? selectedSchedule = freezed,
  }) {
    return _then(_value.copyWith(
      savedSchedules: null == savedSchedules
          ? _value.savedSchedules
          : savedSchedules // ignore: cast_nullable_to_non_nullable
              as Set<Schedule>,
      selectedSchedule: freezed == selectedSchedule
          ? _value.selectedSchedule
          : selectedSchedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res>? get selectedSchedule {
    if (_value.selectedSchedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.selectedSchedule!, (value) {
      return _then(_value.copyWith(selectedSchedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavedSchedulesStateImplCopyWith<$Res>
    implements $SavedSchedulesStateCopyWith<$Res> {
  factory _$$SavedSchedulesStateImplCopyWith(_$SavedSchedulesStateImpl value,
          $Res Function(_$SavedSchedulesStateImpl) then) =
      __$$SavedSchedulesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) Set<Schedule> savedSchedules,
      @HiveField(1) Schedule? selectedSchedule});

  @override
  $ScheduleCopyWith<$Res>? get selectedSchedule;
}

/// @nodoc
class __$$SavedSchedulesStateImplCopyWithImpl<$Res>
    extends _$SavedSchedulesStateCopyWithImpl<$Res, _$SavedSchedulesStateImpl>
    implements _$$SavedSchedulesStateImplCopyWith<$Res> {
  __$$SavedSchedulesStateImplCopyWithImpl(_$SavedSchedulesStateImpl _value,
      $Res Function(_$SavedSchedulesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedSchedules = null,
    Object? selectedSchedule = freezed,
  }) {
    return _then(_$SavedSchedulesStateImpl(
      savedSchedules: null == savedSchedules
          ? _value._savedSchedules
          : savedSchedules // ignore: cast_nullable_to_non_nullable
              as Set<Schedule>,
      selectedSchedule: freezed == selectedSchedule
          ? _value.selectedSchedule
          : selectedSchedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveTypeIds.savedSchedulesState,
    adapterName: "SavedSchedulesStateAdapter")
class _$SavedSchedulesStateImpl extends _SavedSchedulesState {
  _$SavedSchedulesStateImpl(
      {@HiveField(0) final Set<Schedule> savedSchedules = const {},
      @HiveField(1) this.selectedSchedule = null})
      : _savedSchedules = savedSchedules,
        super._();

  final Set<Schedule> _savedSchedules;
  @override
  @JsonKey()
  @HiveField(0)
  Set<Schedule> get savedSchedules {
    if (_savedSchedules is EqualUnmodifiableSetView) return _savedSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_savedSchedules);
  }

  @override
  @JsonKey()
  @HiveField(1)
  final Schedule? selectedSchedule;

  @override
  String toString() {
    return 'SavedSchedulesState(savedSchedules: $savedSchedules, selectedSchedule: $selectedSchedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedSchedulesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._savedSchedules, _savedSchedules) &&
            (identical(other.selectedSchedule, selectedSchedule) ||
                other.selectedSchedule == selectedSchedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_savedSchedules), selectedSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedSchedulesStateImplCopyWith<_$SavedSchedulesStateImpl> get copyWith =>
      __$$SavedSchedulesStateImplCopyWithImpl<_$SavedSchedulesStateImpl>(
          this, _$identity);
}

abstract class _SavedSchedulesState extends SavedSchedulesState {
  factory _SavedSchedulesState(
          {@HiveField(0) final Set<Schedule> savedSchedules,
          @HiveField(1) final Schedule? selectedSchedule}) =
      _$SavedSchedulesStateImpl;
  _SavedSchedulesState._() : super._();

  @override
  @HiveField(0)
  Set<Schedule> get savedSchedules;
  @override
  @HiveField(1)
  Schedule? get selectedSchedule;
  @override
  @JsonKey(ignore: true)
  _$$SavedSchedulesStateImplCopyWith<_$SavedSchedulesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
