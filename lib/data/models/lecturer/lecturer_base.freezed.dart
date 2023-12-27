// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LecturerBase _$LecturerBaseFromJson(Map<String, dynamic> json) {
  return _LecturerBase.fromJson(json);
}

/// @nodoc
mixin _$LecturerBase {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(4)
  String get surname => throw _privateConstructorUsedError;
  @HiveField(5)
  String get academicDegree => throw _privateConstructorUsedError;
  @HiveField(6)
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LecturerBaseCopyWith<LecturerBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerBaseCopyWith<$Res> {
  factory $LecturerBaseCopyWith(
          LecturerBase value, $Res Function(LecturerBase) then) =
      _$LecturerBaseCopyWithImpl<$Res, LecturerBase>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) String firstName,
      @HiveField(4) String surname,
      @HiveField(5) String academicDegree,
      @HiveField(6) String email});
}

/// @nodoc
class _$LecturerBaseCopyWithImpl<$Res, $Val extends LecturerBase>
    implements $LecturerBaseCopyWith<$Res> {
  _$LecturerBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? firstName = null,
    Object? surname = null,
    Object? academicDegree = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      academicDegree: null == academicDegree
          ? _value.academicDegree
          : academicDegree // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerBaseImplCopyWith<$Res>
    implements $LecturerBaseCopyWith<$Res> {
  factory _$$LecturerBaseImplCopyWith(
          _$LecturerBaseImpl value, $Res Function(_$LecturerBaseImpl) then) =
      __$$LecturerBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime created,
      @HiveField(2) @DateTimeConverter() DateTime updated,
      @HiveField(3) String firstName,
      @HiveField(4) String surname,
      @HiveField(5) String academicDegree,
      @HiveField(6) String email});
}

/// @nodoc
class __$$LecturerBaseImplCopyWithImpl<$Res>
    extends _$LecturerBaseCopyWithImpl<$Res, _$LecturerBaseImpl>
    implements _$$LecturerBaseImplCopyWith<$Res> {
  __$$LecturerBaseImplCopyWithImpl(
      _$LecturerBaseImpl _value, $Res Function(_$LecturerBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? firstName = null,
    Object? surname = null,
    Object? academicDegree = null,
    Object? email = null,
  }) {
    return _then(_$LecturerBaseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      academicDegree: null == academicDegree
          ? _value.academicDegree
          : academicDegree // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.lecturerBase, adapterName: "LecturerBaseAdapter")
class _$LecturerBaseImpl extends _LecturerBase {
  _$LecturerBaseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() required this.created,
      @HiveField(2) @DateTimeConverter() required this.updated,
      @HiveField(3) required this.firstName,
      @HiveField(4) required this.surname,
      @HiveField(5) required this.academicDegree,
      @HiveField(6) required this.email})
      : super._();

  factory _$LecturerBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerBaseImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  final DateTime created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  final DateTime updated;
  @override
  @HiveField(3)
  final String firstName;
  @override
  @HiveField(4)
  final String surname;
  @override
  @HiveField(5)
  final String academicDegree;
  @override
  @HiveField(6)
  final String email;

  @override
  String toString() {
    return 'LecturerBase(id: $id, created: $created, updated: $updated, firstName: $firstName, surname: $surname, academicDegree: $academicDegree, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.academicDegree, academicDegree) ||
                other.academicDegree == academicDegree) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, firstName,
      surname, academicDegree, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerBaseImplCopyWith<_$LecturerBaseImpl> get copyWith =>
      __$$LecturerBaseImplCopyWithImpl<_$LecturerBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerBaseImplToJson(
      this,
    );
  }
}

abstract class _LecturerBase extends LecturerBase {
  factory _LecturerBase(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() required final DateTime created,
      @HiveField(2) @DateTimeConverter() required final DateTime updated,
      @HiveField(3) required final String firstName,
      @HiveField(4) required final String surname,
      @HiveField(5) required final String academicDegree,
      @HiveField(6) required final String email}) = _$LecturerBaseImpl;
  _LecturerBase._() : super._();

  factory _LecturerBase.fromJson(Map<String, dynamic> json) =
      _$LecturerBaseImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @DateTimeConverter()
  DateTime get created;
  @override
  @HiveField(2)
  @DateTimeConverter()
  DateTime get updated;
  @override
  @HiveField(3)
  String get firstName;
  @override
  @HiveField(4)
  String get surname;
  @override
  @HiveField(5)
  String get academicDegree;
  @override
  @HiveField(6)
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$LecturerBaseImplCopyWith<_$LecturerBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
