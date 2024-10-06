// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_events_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEventsState {
  CollectLessonData? get schedule => throw _privateConstructorUsedError;
  bool get isFromCache => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  ({String id, ScheduleType type}) get key =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScheduleEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleEventsStateCopyWith<ScheduleEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventsStateCopyWith<$Res> {
  factory $ScheduleEventsStateCopyWith(
          ScheduleEventsState value, $Res Function(ScheduleEventsState) then) =
      _$ScheduleEventsStateCopyWithImpl<$Res, ScheduleEventsState>;
  @useResult
  $Res call(
      {CollectLessonData? schedule,
      bool isFromCache,
      bool isLoading,
      Object? error,
      ({String id, ScheduleType type}) key});
}

/// @nodoc
class _$ScheduleEventsStateCopyWithImpl<$Res, $Val extends ScheduleEventsState>
    implements $ScheduleEventsStateCopyWith<$Res> {
  _$ScheduleEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = freezed,
    Object? isFromCache = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as CollectLessonData?,
      isFromCache: null == isFromCache
          ? _value.isFromCache
          : isFromCache // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ({String id, ScheduleType type}),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleEventsStateImplCopyWith<$Res>
    implements $ScheduleEventsStateCopyWith<$Res> {
  factory _$$ScheduleEventsStateImplCopyWith(_$ScheduleEventsStateImpl value,
          $Res Function(_$ScheduleEventsStateImpl) then) =
      __$$ScheduleEventsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CollectLessonData? schedule,
      bool isFromCache,
      bool isLoading,
      Object? error,
      ({String id, ScheduleType type}) key});
}

/// @nodoc
class __$$ScheduleEventsStateImplCopyWithImpl<$Res>
    extends _$ScheduleEventsStateCopyWithImpl<$Res, _$ScheduleEventsStateImpl>
    implements _$$ScheduleEventsStateImplCopyWith<$Res> {
  __$$ScheduleEventsStateImplCopyWithImpl(_$ScheduleEventsStateImpl _value,
      $Res Function(_$ScheduleEventsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = freezed,
    Object? isFromCache = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? key = null,
  }) {
    return _then(_$ScheduleEventsStateImpl(
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as CollectLessonData?,
      isFromCache: null == isFromCache
          ? _value.isFromCache
          : isFromCache // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ({String id, ScheduleType type}),
    ));
  }
}

/// @nodoc

class _$ScheduleEventsStateImpl extends _ScheduleEventsState {
  const _$ScheduleEventsStateImpl(
      {this.schedule,
      this.isFromCache = false,
      this.isLoading = false,
      this.error,
      required this.key})
      : super._();

  @override
  final CollectLessonData? schedule;
  @override
  @JsonKey()
  final bool isFromCache;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Object? error;
  @override
  final ({String id, ScheduleType type}) key;

  @override
  String toString() {
    return 'ScheduleEventsState(schedule: $schedule, isFromCache: $isFromCache, isLoading: $isLoading, error: $error, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventsStateImpl &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.isFromCache, isFromCache) ||
                other.isFromCache == isFromCache) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schedule, isFromCache, isLoading,
      const DeepCollectionEquality().hash(error), key);

  /// Create a copy of ScheduleEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventsStateImplCopyWith<_$ScheduleEventsStateImpl> get copyWith =>
      __$$ScheduleEventsStateImplCopyWithImpl<_$ScheduleEventsStateImpl>(
          this, _$identity);
}

abstract class _ScheduleEventsState extends ScheduleEventsState {
  const factory _ScheduleEventsState(
          {final CollectLessonData? schedule,
          final bool isFromCache,
          final bool isLoading,
          final Object? error,
          required final ({String id, ScheduleType type}) key}) =
      _$ScheduleEventsStateImpl;
  const _ScheduleEventsState._() : super._();

  @override
  CollectLessonData? get schedule;
  @override
  bool get isFromCache;
  @override
  bool get isLoading;
  @override
  Object? get error;
  @override
  ({String id, ScheduleType type}) get key;

  /// Create a copy of ScheduleEventsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEventsStateImplCopyWith<_$ScheduleEventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
