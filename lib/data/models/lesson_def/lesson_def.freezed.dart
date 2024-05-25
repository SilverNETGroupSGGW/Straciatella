// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_def.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonDef _$LessonDefFromJson(Map<String, dynamic> json) {
  return _LessonDef.fromJson(json);
}

/// @nodoc
mixin _$LessonDef {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  Classroom? get classroom =>
      throw _privateConstructorUsedError; // might be remote
  @HiveField(4)
  String get ice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonDefCopyWith<LessonDef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDefCopyWith<$Res> {
  factory $LessonDefCopyWith(LessonDef value, $Res Function(LessonDef) then) =
      _$LessonDefCopyWithImpl<$Res, LessonDef>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) Classroom? classroom,
      @HiveField(4) String ice});

  $ClassroomCopyWith<$Res>? get classroom;
}

/// @nodoc
class _$LessonDefCopyWithImpl<$Res, $Val extends LessonDef>
    implements $LessonDefCopyWith<$Res> {
  _$LessonDefCopyWithImpl(this._value, this._then);

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
    Object? classroom = freezed,
    Object? ice = null,
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
      classroom: freezed == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom?,
      ice: null == ice
          ? _value.ice
          : ice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res>? get classroom {
    if (_value.classroom == null) {
      return null;
    }

    return $ClassroomCopyWith<$Res>(_value.classroom!, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonDefImplCopyWith<$Res>
    implements $LessonDefCopyWith<$Res> {
  factory _$$LessonDefImplCopyWith(
          _$LessonDefImpl value, $Res Function(_$LessonDefImpl) then) =
      __$$LessonDefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) Classroom? classroom,
      @HiveField(4) String ice});

  @override
  $ClassroomCopyWith<$Res>? get classroom;
}

/// @nodoc
class __$$LessonDefImplCopyWithImpl<$Res>
    extends _$LessonDefCopyWithImpl<$Res, _$LessonDefImpl>
    implements _$$LessonDefImplCopyWith<$Res> {
  __$$LessonDefImplCopyWithImpl(
      _$LessonDefImpl _value, $Res Function(_$LessonDefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? classroom = freezed,
    Object? ice = null,
  }) {
    return _then(_$LessonDefImpl(
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
      classroom: freezed == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom?,
      ice: null == ice
          ? _value.ice
          : ice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.lessonDef)
class _$LessonDefImpl extends _LessonDef {
  _$LessonDefImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) this.classroom,
      @HiveField(4) required this.ice})
      : super._();

  factory _$LessonDefImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonDefImplFromJson(json);

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
  final Classroom? classroom;
// might be remote
  @override
  @HiveField(4)
  final String ice;

  @override
  String toString() {
    return 'LessonDef(id: $id, created: $created, updated: $updated, classroom: $classroom, ice: $ice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonDefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.ice, ice) || other.ice == ice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created, updated, classroom, ice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonDefImplCopyWith<_$LessonDefImpl> get copyWith =>
      __$$LessonDefImplCopyWithImpl<_$LessonDefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonDefImplToJson(
      this,
    );
  }
}

abstract class _LessonDef extends LessonDef {
  factory _LessonDef(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) final Classroom? classroom,
      @HiveField(4) required final String ice}) = _$LessonDefImpl;
  _LessonDef._() : super._();

  factory _LessonDef.fromJson(Map<String, dynamic> json) =
      _$LessonDefImpl.fromJson;

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
  Classroom? get classroom;
  @override // might be remote
  @HiveField(4)
  String get ice;
  @override
  @JsonKey(ignore: true)
  _$$LessonDefImplCopyWith<_$LessonDefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
