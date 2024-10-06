// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_filters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleFiltersState _$ScheduleFiltersStateFromJson(Map<String, dynamic> json) {
  return _ScheduleFiltersState.fromJson(json);
}

/// @nodoc
mixin _$ScheduleFiltersState {
  List<({String groupId, String studyProgramId, String studySemesterId})>
      get visibleGroups => throw _privateConstructorUsedError;

  /// Serializes this ScheduleFiltersState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleFiltersStateCopyWith<ScheduleFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleFiltersStateCopyWith<$Res> {
  factory $ScheduleFiltersStateCopyWith(ScheduleFiltersState value,
          $Res Function(ScheduleFiltersState) then) =
      _$ScheduleFiltersStateCopyWithImpl<$Res, ScheduleFiltersState>;
  @useResult
  $Res call(
      {List<({String groupId, String studyProgramId, String studySemesterId})>
          visibleGroups});
}

/// @nodoc
class _$ScheduleFiltersStateCopyWithImpl<$Res,
        $Val extends ScheduleFiltersState>
    implements $ScheduleFiltersStateCopyWith<$Res> {
  _$ScheduleFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibleGroups = null,
  }) {
    return _then(_value.copyWith(
      visibleGroups: null == visibleGroups
          ? _value.visibleGroups
          : visibleGroups // ignore: cast_nullable_to_non_nullable
              as List<
                  ({
                    String groupId,
                    String studyProgramId,
                    String studySemesterId
                  })>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleFiltersStateImplCopyWith<$Res>
    implements $ScheduleFiltersStateCopyWith<$Res> {
  factory _$$ScheduleFiltersStateImplCopyWith(_$ScheduleFiltersStateImpl value,
          $Res Function(_$ScheduleFiltersStateImpl) then) =
      __$$ScheduleFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<({String groupId, String studyProgramId, String studySemesterId})>
          visibleGroups});
}

/// @nodoc
class __$$ScheduleFiltersStateImplCopyWithImpl<$Res>
    extends _$ScheduleFiltersStateCopyWithImpl<$Res, _$ScheduleFiltersStateImpl>
    implements _$$ScheduleFiltersStateImplCopyWith<$Res> {
  __$$ScheduleFiltersStateImplCopyWithImpl(_$ScheduleFiltersStateImpl _value,
      $Res Function(_$ScheduleFiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibleGroups = null,
  }) {
    return _then(_$ScheduleFiltersStateImpl(
      visibleGroups: null == visibleGroups
          ? _value._visibleGroups
          : visibleGroups // ignore: cast_nullable_to_non_nullable
              as List<
                  ({
                    String groupId,
                    String studyProgramId,
                    String studySemesterId
                  })>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleFiltersStateImpl
    with DiagnosticableTreeMixin
    implements _ScheduleFiltersState {
  const _$ScheduleFiltersStateImpl(
      {final List<
              ({String groupId, String studyProgramId, String studySemesterId})>
          visibleGroups = const []})
      : _visibleGroups = visibleGroups;

  factory _$ScheduleFiltersStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleFiltersStateImplFromJson(json);

  final List<({String groupId, String studyProgramId, String studySemesterId})>
      _visibleGroups;
  @override
  @JsonKey()
  List<({String groupId, String studyProgramId, String studySemesterId})>
      get visibleGroups {
    if (_visibleGroups is EqualUnmodifiableListView) return _visibleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleGroups);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleFiltersState(visibleGroups: $visibleGroups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleFiltersState'))
      ..add(DiagnosticsProperty('visibleGroups', visibleGroups));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleFiltersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._visibleGroups, _visibleGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_visibleGroups));

  /// Create a copy of ScheduleFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleFiltersStateImplCopyWith<_$ScheduleFiltersStateImpl>
      get copyWith =>
          __$$ScheduleFiltersStateImplCopyWithImpl<_$ScheduleFiltersStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleFiltersStateImplToJson(
      this,
    );
  }
}

abstract class _ScheduleFiltersState implements ScheduleFiltersState {
  const factory _ScheduleFiltersState(
      {final List<
              ({String groupId, String studyProgramId, String studySemesterId})>
          visibleGroups}) = _$ScheduleFiltersStateImpl;

  factory _ScheduleFiltersState.fromJson(Map<String, dynamic> json) =
      _$ScheduleFiltersStateImpl.fromJson;

  @override
  List<({String groupId, String studyProgramId, String studySemesterId})>
      get visibleGroups;

  /// Create a copy of ScheduleFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleFiltersStateImplCopyWith<_$ScheduleFiltersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
