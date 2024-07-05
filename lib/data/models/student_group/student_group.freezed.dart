// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentGroup _$StudentGroupFromJson(Map<String, dynamic> json) {
  return _StudentGroup.fromJson(json);
}

/// @nodoc
mixin _$StudentGroup {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  int get capacity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentGroupCopyWith<StudentGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentGroupCopyWith<$Res> {
  factory $StudentGroupCopyWith(
          StudentGroup value, $Res Function(StudentGroup) then) =
      _$StudentGroupCopyWithImpl<$Res, StudentGroup>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) int capacity});
}

/// @nodoc
class _$StudentGroupCopyWithImpl<$Res, $Val extends StudentGroup>
    implements $StudentGroupCopyWith<$Res> {
  _$StudentGroupCopyWithImpl(this._value, this._then);

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
    Object? name = null,
    Object? capacity = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentGroupImplCopyWith<$Res>
    implements $StudentGroupCopyWith<$Res> {
  factory _$$StudentGroupImplCopyWith(
          _$StudentGroupImpl value, $Res Function(_$StudentGroupImpl) then) =
      __$$StudentGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) int capacity});
}

/// @nodoc
class __$$StudentGroupImplCopyWithImpl<$Res>
    extends _$StudentGroupCopyWithImpl<$Res, _$StudentGroupImpl>
    implements _$$StudentGroupImplCopyWith<$Res> {
  __$$StudentGroupImplCopyWithImpl(
      _$StudentGroupImpl _value, $Res Function(_$StudentGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? name = null,
    Object? capacity = null,
  }) {
    return _then(_$StudentGroupImpl(
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.studentGroup)
class _$StudentGroupImpl implements _StudentGroup {
  _$StudentGroupImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.name,
      @HiveField(4) required this.capacity});

  factory _$StudentGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentGroupImplFromJson(json);

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
  final String name;
  @override
  @HiveField(4)
  final int capacity;

  @override
  String toString() {
    return 'StudentGroup(id: $id, created: $created, updated: $updated, name: $name, capacity: $capacity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created, updated, name, capacity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentGroupImplCopyWith<_$StudentGroupImpl> get copyWith =>
      __$$StudentGroupImplCopyWithImpl<_$StudentGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentGroupImplToJson(
      this,
    );
  }
}

abstract class _StudentGroup implements StudentGroup {
  factory _StudentGroup(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final String name,
      @HiveField(4) required final int capacity}) = _$StudentGroupImpl;

  factory _StudentGroup.fromJson(Map<String, dynamic> json) =
      _$StudentGroupImpl.fromJson;

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
  String get name;
  @override
  @HiveField(4)
  int get capacity;
  @override
  @JsonKey(ignore: true)
  _$$StudentGroupImplCopyWith<_$StudentGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
