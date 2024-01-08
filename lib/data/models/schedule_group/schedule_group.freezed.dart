// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleGroup _$ScheduleGroupFromJson(Map<String, dynamic> json) {
  return _ScheduleGroup.fromJson(json);
}

/// @nodoc
mixin _$ScheduleGroup {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get scheduleId => throw _privateConstructorUsedError;
  @HiveField(4)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleGroupCopyWith<ScheduleGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleGroupCopyWith<$Res> {
  factory $ScheduleGroupCopyWith(
          ScheduleGroup value, $Res Function(ScheduleGroup) then) =
      _$ScheduleGroupCopyWithImpl<$Res, ScheduleGroup>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String? scheduleId,
      @HiveField(4) String name});
}

/// @nodoc
class _$ScheduleGroupCopyWithImpl<$Res, $Val extends ScheduleGroup>
    implements $ScheduleGroupCopyWith<$Res> {
  _$ScheduleGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? scheduleId = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleGroupImplCopyWith<$Res>
    implements $ScheduleGroupCopyWith<$Res> {
  factory _$$ScheduleGroupImplCopyWith(
          _$ScheduleGroupImpl value, $Res Function(_$ScheduleGroupImpl) then) =
      __$$ScheduleGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String? scheduleId,
      @HiveField(4) String name});
}

/// @nodoc
class __$$ScheduleGroupImplCopyWithImpl<$Res>
    extends _$ScheduleGroupCopyWithImpl<$Res, _$ScheduleGroupImpl>
    implements _$$ScheduleGroupImplCopyWith<$Res> {
  __$$ScheduleGroupImplCopyWithImpl(
      _$ScheduleGroupImpl _value, $Res Function(_$ScheduleGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? scheduleId = freezed,
    Object? name = null,
  }) {
    return _then(_$ScheduleGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: HiveTypeIds.scheduleGroup, adapterName: "ScheduleGroupAdapter")
class _$ScheduleGroupImpl extends _ScheduleGroup {
  _$ScheduleGroupImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) this.scheduleId,
      @HiveField(4) required this.name})
      : super._();

  factory _$ScheduleGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleGroupImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  final DateTime? created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  final DateTime? updated;
  @override
  @HiveField(3)
  final String? scheduleId;
  @override
  @HiveField(4)
  final String name;

  @override
  String toString() {
    return 'ScheduleGroup(id: $id, created: $created, updated: $updated, scheduleId: $scheduleId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created, updated, scheduleId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleGroupImplCopyWith<_$ScheduleGroupImpl> get copyWith =>
      __$$ScheduleGroupImplCopyWithImpl<_$ScheduleGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleGroupImplToJson(
      this,
    );
  }
}

abstract class _ScheduleGroup extends ScheduleGroup {
  factory _ScheduleGroup(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) final String? scheduleId,
      @HiveField(4) required final String name}) = _$ScheduleGroupImpl;
  _ScheduleGroup._() : super._();

  factory _ScheduleGroup.fromJson(Map<String, dynamic> json) =
      _$ScheduleGroupImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated;
  @override
  @HiveField(3)
  String? get scheduleId;
  @override
  @HiveField(4)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleGroupImplCopyWith<_$ScheduleGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
