// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_tree.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LecturerFullNameValue {
  String get firstName => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get academicDegree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LecturerFullNameValueCopyWith<_LecturerFullNameValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LecturerFullNameValueCopyWith<$Res> {
  factory _$LecturerFullNameValueCopyWith(_LecturerFullNameValue value,
          $Res Function(_LecturerFullNameValue) then) =
      __$LecturerFullNameValueCopyWithImpl<$Res, _LecturerFullNameValue>;
  @useResult
  $Res call({String firstName, String surname, String academicDegree});
}

/// @nodoc
class __$LecturerFullNameValueCopyWithImpl<$Res,
        $Val extends _LecturerFullNameValue>
    implements _$LecturerFullNameValueCopyWith<$Res> {
  __$LecturerFullNameValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? surname = null,
    Object? academicDegree = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LecturerFullNameValueImplCopyWith<$Res>
    implements _$LecturerFullNameValueCopyWith<$Res> {
  factory _$$_LecturerFullNameValueImplCopyWith(
          _$_LecturerFullNameValueImpl value,
          $Res Function(_$_LecturerFullNameValueImpl) then) =
      __$$_LecturerFullNameValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String surname, String academicDegree});
}

/// @nodoc
class __$$_LecturerFullNameValueImplCopyWithImpl<$Res>
    extends __$LecturerFullNameValueCopyWithImpl<$Res,
        _$_LecturerFullNameValueImpl>
    implements _$$_LecturerFullNameValueImplCopyWith<$Res> {
  __$$_LecturerFullNameValueImplCopyWithImpl(
      _$_LecturerFullNameValueImpl _value,
      $Res Function(_$_LecturerFullNameValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? surname = null,
    Object? academicDegree = null,
  }) {
    return _then(_$_LecturerFullNameValueImpl(
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
    ));
  }
}

/// @nodoc

class _$_LecturerFullNameValueImpl extends __LecturerFullNameValue {
  _$_LecturerFullNameValueImpl(
      {required this.firstName,
      required this.surname,
      required this.academicDegree})
      : super._();

  @override
  final String firstName;
  @override
  final String surname;
  @override
  final String academicDegree;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LecturerFullNameValueImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.academicDegree, academicDegree) ||
                other.academicDegree == academicDegree));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, surname, academicDegree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LecturerFullNameValueImplCopyWith<_$_LecturerFullNameValueImpl>
      get copyWith => __$$_LecturerFullNameValueImplCopyWithImpl<
          _$_LecturerFullNameValueImpl>(this, _$identity);
}

abstract class __LecturerFullNameValue extends _LecturerFullNameValue {
  factory __LecturerFullNameValue(
      {required final String firstName,
      required final String surname,
      required final String academicDegree}) = _$_LecturerFullNameValueImpl;
  __LecturerFullNameValue._() : super._();

  @override
  String get firstName;
  @override
  String get surname;
  @override
  String get academicDegree;
  @override
  @JsonKey(ignore: true)
  _$$_LecturerFullNameValueImplCopyWith<_$_LecturerFullNameValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
