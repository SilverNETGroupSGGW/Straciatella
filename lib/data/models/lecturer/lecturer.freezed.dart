// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lecturer _$LecturerFromJson(Map<String, dynamic> json) {
  return _Lecturer.fromJson(json);
}

/// @nodoc
mixin _$Lecturer {
  String get id => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get updated => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get academicDegree => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LecturerCopyWith<Lecturer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerCopyWith<$Res> {
  factory $LecturerCopyWith(Lecturer value, $Res Function(Lecturer) then) =
      _$LecturerCopyWithImpl<$Res, Lecturer>;
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() DateTime created,
      @DateTimeConverter() DateTime updated,
      String firstName,
      String surname,
      String academicDegree,
      String email});
}

/// @nodoc
class _$LecturerCopyWithImpl<$Res, $Val extends Lecturer>
    implements $LecturerCopyWith<$Res> {
  _$LecturerCopyWithImpl(this._value, this._then);

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
abstract class _$$LecturerImplCopyWith<$Res>
    implements $LecturerCopyWith<$Res> {
  factory _$$LecturerImplCopyWith(
          _$LecturerImpl value, $Res Function(_$LecturerImpl) then) =
      __$$LecturerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() DateTime created,
      @DateTimeConverter() DateTime updated,
      String firstName,
      String surname,
      String academicDegree,
      String email});
}

/// @nodoc
class __$$LecturerImplCopyWithImpl<$Res>
    extends _$LecturerCopyWithImpl<$Res, _$LecturerImpl>
    implements _$$LecturerImplCopyWith<$Res> {
  __$$LecturerImplCopyWithImpl(
      _$LecturerImpl _value, $Res Function(_$LecturerImpl) _then)
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
    return _then(_$LecturerImpl(
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
class _$LecturerImpl implements _Lecturer {
  _$LecturerImpl(
      {required this.id,
      @DateTimeConverter() required this.created,
      @DateTimeConverter() required this.updated,
      required this.firstName,
      required this.surname,
      required this.academicDegree,
      required this.email});

  factory _$LecturerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  final DateTime created;
  @override
  @DateTimeConverter()
  final DateTime updated;
  @override
  final String firstName;
  @override
  final String surname;
  @override
  final String academicDegree;
  @override
  final String email;

  @override
  String toString() {
    return 'Lecturer(id: $id, created: $created, updated: $updated, firstName: $firstName, surname: $surname, academicDegree: $academicDegree, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerImpl &&
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
  _$$LecturerImplCopyWith<_$LecturerImpl> get copyWith =>
      __$$LecturerImplCopyWithImpl<_$LecturerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerImplToJson(
      this,
    );
  }
}

abstract class _Lecturer implements Lecturer {
  factory _Lecturer(
      {required final String id,
      @DateTimeConverter() required final DateTime created,
      @DateTimeConverter() required final DateTime updated,
      required final String firstName,
      required final String surname,
      required final String academicDegree,
      required final String email}) = _$LecturerImpl;

  factory _Lecturer.fromJson(Map<String, dynamic> json) =
      _$LecturerImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  DateTime get created;
  @override
  @DateTimeConverter()
  DateTime get updated;
  @override
  String get firstName;
  @override
  String get surname;
  @override
  String get academicDegree;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$LecturerImplCopyWith<_$LecturerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
