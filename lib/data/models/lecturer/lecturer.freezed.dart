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
  Degree get degree => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;

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
      {Degree degree,
      String email,
      String surname,
      String id,
      String firstName});
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
    Object? degree = null,
    Object? email = null,
    Object? surname = null,
    Object? id = null,
    Object? firstName = null,
  }) {
    return _then(_value.copyWith(
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as Degree,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
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
      {Degree degree,
      String email,
      String surname,
      String id,
      String firstName});
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
    Object? degree = null,
    Object? email = null,
    Object? surname = null,
    Object? id = null,
    Object? firstName = null,
  }) {
    return _then(_$LecturerImpl(
      degree: null == degree
          ? _value.degree
          : degree // ignore: cast_nullable_to_non_nullable
              as Degree,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerImpl extends _Lecturer {
  _$LecturerImpl(
      {required this.degree,
      required this.email,
      required this.surname,
      required this.id,
      required this.firstName})
      : super._();

  factory _$LecturerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerImplFromJson(json);

  @override
  final Degree degree;
  @override
  final String email;
  @override
  final String surname;
  @override
  final String id;
  @override
  final String firstName;

  @override
  String toString() {
    return 'Lecturer(degree: $degree, email: $email, surname: $surname, id: $id, firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerImpl &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, degree, email, surname, id, firstName);

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

abstract class _Lecturer extends Lecturer {
  factory _Lecturer(
      {required final Degree degree,
      required final String email,
      required final String surname,
      required final String id,
      required final String firstName}) = _$LecturerImpl;
  _Lecturer._() : super._();

  factory _Lecturer.fromJson(Map<String, dynamic> json) =
      _$LecturerImpl.fromJson;

  @override
  Degree get degree;
  @override
  String get email;
  @override
  String get surname;
  @override
  String get id;
  @override
  String get firstName;
  @override
  @JsonKey(ignore: true)
  _$$LecturerImplCopyWith<_$LecturerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
