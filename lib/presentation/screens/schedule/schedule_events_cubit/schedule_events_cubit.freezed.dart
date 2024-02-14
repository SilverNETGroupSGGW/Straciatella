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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEventsState {
  Map<DateTime, List<ScheduleEvent>> get events =>
      throw _privateConstructorUsedError;
  ExtendedSchedule? get fromSchedule => throw _privateConstructorUsedError;
  bool get isFromCache => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {Map<DateTime, List<ScheduleEvent>> events,
      ExtendedSchedule? fromSchedule,
      bool isFromCache,
      bool isLoading,
      Object? error});
}

/// @nodoc
class _$ScheduleEventsStateCopyWithImpl<$Res, $Val extends ScheduleEventsState>
    implements $ScheduleEventsStateCopyWith<$Res> {
  _$ScheduleEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? fromSchedule = freezed,
    Object? isFromCache = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<ScheduleEvent>>,
      fromSchedule: freezed == fromSchedule
          ? _value.fromSchedule
          : fromSchedule // ignore: cast_nullable_to_non_nullable
              as ExtendedSchedule?,
      isFromCache: null == isFromCache
          ? _value.isFromCache
          : isFromCache // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
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
      {Map<DateTime, List<ScheduleEvent>> events,
      ExtendedSchedule? fromSchedule,
      bool isFromCache,
      bool isLoading,
      Object? error});
}

/// @nodoc
class __$$ScheduleEventsStateImplCopyWithImpl<$Res>
    extends _$ScheduleEventsStateCopyWithImpl<$Res, _$ScheduleEventsStateImpl>
    implements _$$ScheduleEventsStateImplCopyWith<$Res> {
  __$$ScheduleEventsStateImplCopyWithImpl(_$ScheduleEventsStateImpl _value,
      $Res Function(_$ScheduleEventsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? fromSchedule = freezed,
    Object? isFromCache = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$ScheduleEventsStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<ScheduleEvent>>,
      fromSchedule: freezed == fromSchedule
          ? _value.fromSchedule
          : fromSchedule // ignore: cast_nullable_to_non_nullable
              as ExtendedSchedule?,
      isFromCache: null == isFromCache
          ? _value.isFromCache
          : isFromCache // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ScheduleEventsStateImpl extends _ScheduleEventsState {
  const _$ScheduleEventsStateImpl(
      {final Map<DateTime, List<ScheduleEvent>> events = const {},
      this.fromSchedule,
      this.isFromCache = false,
      this.isLoading = false,
      this.error})
      : _events = events,
        super._();

  final Map<DateTime, List<ScheduleEvent>> _events;
  @override
  @JsonKey()
  Map<DateTime, List<ScheduleEvent>> get events {
    if (_events is EqualUnmodifiableMapView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_events);
  }

  @override
  final ExtendedSchedule? fromSchedule;
  @override
  @JsonKey()
  final bool isFromCache;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Object? error;

  @override
  String toString() {
    return 'ScheduleEventsState(events: $events, fromSchedule: $fromSchedule, isFromCache: $isFromCache, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventsStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.fromSchedule, fromSchedule) ||
                other.fromSchedule == fromSchedule) &&
            (identical(other.isFromCache, isFromCache) ||
                other.isFromCache == isFromCache) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_events),
      fromSchedule,
      isFromCache,
      isLoading,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventsStateImplCopyWith<_$ScheduleEventsStateImpl> get copyWith =>
      __$$ScheduleEventsStateImplCopyWithImpl<_$ScheduleEventsStateImpl>(
          this, _$identity);
}

abstract class _ScheduleEventsState extends ScheduleEventsState {
  const factory _ScheduleEventsState(
      {final Map<DateTime, List<ScheduleEvent>> events,
      final ExtendedSchedule? fromSchedule,
      final bool isFromCache,
      final bool isLoading,
      final Object? error}) = _$ScheduleEventsStateImpl;
  const _ScheduleEventsState._() : super._();

  @override
  Map<DateTime, List<ScheduleEvent>> get events;
  @override
  ExtendedSchedule? get fromSchedule;
  @override
  bool get isFromCache;
  @override
  bool get isLoading;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleEventsStateImplCopyWith<_$ScheduleEventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
