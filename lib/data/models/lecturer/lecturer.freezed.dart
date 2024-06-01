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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lecturer _$LecturerFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'base':
      return LecturerBase.fromJson(json);
    case 'ext':
      return LecturerExt.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Lecturer',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Lecturer {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(4)
  String get surName => throw _privateConstructorUsedError;
  @HiveField(5)
  String get academicDegree => throw _privateConstructorUsedError;
  @HiveField(6)
  String get email => throw _privateConstructorUsedError;
  @HiveField(7)
  String get institute => throw _privateConstructorUsedError;
  @HiveField(8)
  Organization get organization => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)
        base,
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)
        ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)?
        base,
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)?
        ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)?
        base,
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)?
        ext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LecturerBase value) base,
    required TResult Function(LecturerExt value) ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LecturerBase value)? base,
    TResult? Function(LecturerExt value)? ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LecturerBase value)? base,
    TResult Function(LecturerExt value)? ext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String firstName,
      @HiveField(4) String surName,
      @HiveField(5) String academicDegree,
      @HiveField(6) String email,
      @HiveField(7) String institute,
      @HiveField(8) Organization organization});

  $OrganizationCopyWith<$Res> get organization;
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
    Object? created = freezed,
    Object? updated = freezed,
    Object? firstName = null,
    Object? surName = null,
    Object? academicDegree = null,
    Object? email = null,
    Object? institute = null,
    Object? organization = null,
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      academicDegree: null == academicDegree
          ? _value.academicDegree
          : academicDegree // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      institute: null == institute
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res> get organization {
    return $OrganizationCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LecturerBaseImplCopyWith<$Res>
    implements $LecturerCopyWith<$Res> {
  factory _$$LecturerBaseImplCopyWith(
          _$LecturerBaseImpl value, $Res Function(_$LecturerBaseImpl) then) =
      __$$LecturerBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String firstName,
      @HiveField(4) String surName,
      @HiveField(5) String academicDegree,
      @HiveField(6) String email,
      @HiveField(7) String institute,
      @HiveField(8) Organization organization});

  @override
  $OrganizationCopyWith<$Res> get organization;
}

/// @nodoc
class __$$LecturerBaseImplCopyWithImpl<$Res>
    extends _$LecturerCopyWithImpl<$Res, _$LecturerBaseImpl>
    implements _$$LecturerBaseImplCopyWith<$Res> {
  __$$LecturerBaseImplCopyWithImpl(
      _$LecturerBaseImpl _value, $Res Function(_$LecturerBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? firstName = null,
    Object? surName = null,
    Object? academicDegree = null,
    Object? email = null,
    Object? institute = null,
    Object? organization = null,
  }) {
    return _then(_$LecturerBaseImpl(
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      academicDegree: null == academicDegree
          ? _value.academicDegree
          : academicDegree // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      institute: null == institute
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.lecturerBase)
class _$LecturerBaseImpl extends LecturerBase {
  _$LecturerBaseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.firstName,
      @HiveField(4) required this.surName,
      @HiveField(5) required this.academicDegree,
      @HiveField(6) required this.email,
      @HiveField(7) required this.institute,
      @HiveField(8) required this.organization,
      final String? $type})
      : $type = $type ?? 'base',
        super._();

  factory _$LecturerBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerBaseImplFromJson(json);

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
  final String firstName;
  @override
  @HiveField(4)
  final String surName;
  @override
  @HiveField(5)
  final String academicDegree;
  @override
  @HiveField(6)
  final String email;
  @override
  @HiveField(7)
  final String institute;
  @override
  @HiveField(8)
  final Organization organization;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Lecturer.base(id: $id, created: $created, updated: $updated, firstName: $firstName, surName: $surName, academicDegree: $academicDegree, email: $email, institute: $institute, organization: $organization)';
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
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.academicDegree, academicDegree) ||
                other.academicDegree == academicDegree) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.institute, institute) ||
                other.institute == institute) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, firstName,
      surName, academicDegree, email, institute, organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerBaseImplCopyWith<_$LecturerBaseImpl> get copyWith =>
      __$$LecturerBaseImplCopyWithImpl<_$LecturerBaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)
        base,
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)
        ext,
  }) {
    return base(id, created, updated, firstName, surName, academicDegree, email,
        institute, organization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)?
        base,
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)?
        ext,
  }) {
    return base?.call(id, created, updated, firstName, surName, academicDegree,
        email, institute, organization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)?
        base,
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)?
        ext,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(id, created, updated, firstName, surName, academicDegree,
          email, institute, organization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LecturerBase value) base,
    required TResult Function(LecturerExt value) ext,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LecturerBase value)? base,
    TResult? Function(LecturerExt value)? ext,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LecturerBase value)? base,
    TResult Function(LecturerExt value)? ext,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerBaseImplToJson(
      this,
    );
  }
}

abstract class LecturerBase extends Lecturer {
  factory LecturerBase(
          {@HiveField(0) required final String id,
          @HiveField(1) @DateTimeConverter() final DateTime? created,
          @HiveField(2) @DateTimeConverter() final DateTime? updated,
          @HiveField(3) required final String firstName,
          @HiveField(4) required final String surName,
          @HiveField(5) required final String academicDegree,
          @HiveField(6) required final String email,
          @HiveField(7) required final String institute,
          @HiveField(8) required final Organization organization}) =
      _$LecturerBaseImpl;
  LecturerBase._() : super._();

  factory LecturerBase.fromJson(Map<String, dynamic> json) =
      _$LecturerBaseImpl.fromJson;

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
  String get firstName;
  @override
  @HiveField(4)
  String get surName;
  @override
  @HiveField(5)
  String get academicDegree;
  @override
  @HiveField(6)
  String get email;
  @override
  @HiveField(7)
  String get institute;
  @override
  @HiveField(8)
  Organization get organization;
  @override
  @JsonKey(ignore: true)
  _$$LecturerBaseImplCopyWith<_$LecturerBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LecturerExtImplCopyWith<$Res>
    implements $LecturerCopyWith<$Res> {
  factory _$$LecturerExtImplCopyWith(
          _$LecturerExtImpl value, $Res Function(_$LecturerExtImpl) then) =
      __$$LecturerExtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String firstName,
      @HiveField(4) String surName,
      @HiveField(5) String academicDegree,
      @HiveField(6) String email,
      @HiveField(7) String institute,
      @HiveField(8) Organization organization,
      @HiveField(9) List<StudyProgram> studyPrograms});

  @override
  $OrganizationCopyWith<$Res> get organization;
}

/// @nodoc
class __$$LecturerExtImplCopyWithImpl<$Res>
    extends _$LecturerCopyWithImpl<$Res, _$LecturerExtImpl>
    implements _$$LecturerExtImplCopyWith<$Res> {
  __$$LecturerExtImplCopyWithImpl(
      _$LecturerExtImpl _value, $Res Function(_$LecturerExtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? firstName = null,
    Object? surName = null,
    Object? academicDegree = null,
    Object? email = null,
    Object? institute = null,
    Object? organization = null,
    Object? studyPrograms = null,
  }) {
    return _then(_$LecturerExtImpl(
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      academicDegree: null == academicDegree
          ? _value.academicDegree
          : academicDegree // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      institute: null == institute
          ? _value.institute
          : institute // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
      studyPrograms: null == studyPrograms
          ? _value._studyPrograms
          : studyPrograms // ignore: cast_nullable_to_non_nullable
              as List<StudyProgram>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.lecturer)
class _$LecturerExtImpl extends LecturerExt with WithLessonsData {
  _$LecturerExtImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.firstName,
      @HiveField(4) required this.surName,
      @HiveField(5) required this.academicDegree,
      @HiveField(6) required this.email,
      @HiveField(7) required this.institute,
      @HiveField(8) required this.organization,
      @HiveField(9) required final List<StudyProgram> studyPrograms,
      final String? $type})
      : _studyPrograms = studyPrograms,
        $type = $type ?? 'ext',
        super._();

  factory _$LecturerExtImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerExtImplFromJson(json);

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
  final String firstName;
  @override
  @HiveField(4)
  final String surName;
  @override
  @HiveField(5)
  final String academicDegree;
  @override
  @HiveField(6)
  final String email;
  @override
  @HiveField(7)
  final String institute;
  @override
  @HiveField(8)
  final Organization organization;
// extended data
  final List<StudyProgram> _studyPrograms;
// extended data
  @override
  @HiveField(9)
  List<StudyProgram> get studyPrograms {
    if (_studyPrograms is EqualUnmodifiableListView) return _studyPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyPrograms);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Lecturer.ext(id: $id, created: $created, updated: $updated, firstName: $firstName, surName: $surName, academicDegree: $academicDegree, email: $email, institute: $institute, organization: $organization, studyPrograms: $studyPrograms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerExtImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.academicDegree, academicDegree) ||
                other.academicDegree == academicDegree) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.institute, institute) ||
                other.institute == institute) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            const DeepCollectionEquality()
                .equals(other._studyPrograms, _studyPrograms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      firstName,
      surName,
      academicDegree,
      email,
      institute,
      organization,
      const DeepCollectionEquality().hash(_studyPrograms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerExtImplCopyWith<_$LecturerExtImpl> get copyWith =>
      __$$LecturerExtImplCopyWithImpl<_$LecturerExtImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)
        base,
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)
        ext,
  }) {
    return ext(id, created, updated, firstName, surName, academicDegree, email,
        institute, organization, studyPrograms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)?
        base,
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)?
        ext,
  }) {
    return ext?.call(id, created, updated, firstName, surName, academicDegree,
        email, institute, organization, studyPrograms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization)?
        base,
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String firstName,
            @HiveField(4) String surName,
            @HiveField(5) String academicDegree,
            @HiveField(6) String email,
            @HiveField(7) String institute,
            @HiveField(8) Organization organization,
            @HiveField(9) List<StudyProgram> studyPrograms)?
        ext,
    required TResult orElse(),
  }) {
    if (ext != null) {
      return ext(id, created, updated, firstName, surName, academicDegree,
          email, institute, organization, studyPrograms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LecturerBase value) base,
    required TResult Function(LecturerExt value) ext,
  }) {
    return ext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LecturerBase value)? base,
    TResult? Function(LecturerExt value)? ext,
  }) {
    return ext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LecturerBase value)? base,
    TResult Function(LecturerExt value)? ext,
    required TResult orElse(),
  }) {
    if (ext != null) {
      return ext(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerExtImplToJson(
      this,
    );
  }
}

abstract class LecturerExt extends Lecturer implements WithLessonsData {
  factory LecturerExt(
          {@HiveField(0) required final String id,
          @HiveField(1) @DateTimeConverter() final DateTime? created,
          @HiveField(2) @DateTimeConverter() final DateTime? updated,
          @HiveField(3) required final String firstName,
          @HiveField(4) required final String surName,
          @HiveField(5) required final String academicDegree,
          @HiveField(6) required final String email,
          @HiveField(7) required final String institute,
          @HiveField(8) required final Organization organization,
          @HiveField(9) required final List<StudyProgram> studyPrograms}) =
      _$LecturerExtImpl;
  LecturerExt._() : super._();

  factory LecturerExt.fromJson(Map<String, dynamic> json) =
      _$LecturerExtImpl.fromJson;

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
  String get firstName;
  @override
  @HiveField(4)
  String get surName;
  @override
  @HiveField(5)
  String get academicDegree;
  @override
  @HiveField(6)
  String get email;
  @override
  @HiveField(7)
  String get institute;
  @override
  @HiveField(8)
  Organization get organization; // extended data
  @HiveField(9)
  List<StudyProgram> get studyPrograms;
  @override
  @JsonKey(ignore: true)
  _$$LecturerExtImplCopyWith<_$LecturerExtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
