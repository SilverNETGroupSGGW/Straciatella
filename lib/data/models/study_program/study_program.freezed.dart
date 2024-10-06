// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyProgram _$StudyProgramFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'base':
      return StudyProgramBase.fromJson(json);
    case 'ext':
      return StudyProgramExt.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StudyProgram',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StudyProgram {
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
  String get faculty => throw _privateConstructorUsedError;
  @HiveField(5)
  String get fieldOfStudy => throw _privateConstructorUsedError;
  @HiveField(6)
  String get studyMode => throw _privateConstructorUsedError;
  @HiveField(7)
  String get degreeOfStudy => throw _privateConstructorUsedError;
  @HiveField(8)
  String get startDate => throw _privateConstructorUsedError;
  @HiveField(9)
  Tenant get tenant => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)
        base,
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)
        ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)?
        base,
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)?
        ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)?
        base,
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)?
        ext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyProgramBase value) base,
    required TResult Function(StudyProgramExt value) ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyProgramBase value)? base,
    TResult? Function(StudyProgramExt value)? ext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyProgramBase value)? base,
    TResult Function(StudyProgramExt value)? ext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this StudyProgram to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudyProgramCopyWith<StudyProgram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyProgramCopyWith<$Res> {
  factory $StudyProgramCopyWith(
          StudyProgram value, $Res Function(StudyProgram) then) =
      _$StudyProgramCopyWithImpl<$Res, StudyProgram>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) String faculty,
      @HiveField(5) String fieldOfStudy,
      @HiveField(6) String studyMode,
      @HiveField(7) String degreeOfStudy,
      @HiveField(8) String startDate,
      @HiveField(9) Tenant tenant});

  $TenantCopyWith<$Res> get tenant;
}

/// @nodoc
class _$StudyProgramCopyWithImpl<$Res, $Val extends StudyProgram>
    implements $StudyProgramCopyWith<$Res> {
  _$StudyProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? name = null,
    Object? faculty = null,
    Object? fieldOfStudy = null,
    Object? studyMode = null,
    Object? degreeOfStudy = null,
    Object? startDate = null,
    Object? tenant = null,
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
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: null == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as String,
      degreeOfStudy: null == degreeOfStudy
          ? _value.degreeOfStudy
          : degreeOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      tenant: null == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant,
    ) as $Val);
  }

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TenantCopyWith<$Res> get tenant {
    return $TenantCopyWith<$Res>(_value.tenant, (value) {
      return _then(_value.copyWith(tenant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudyProgramBaseImplCopyWith<$Res>
    implements $StudyProgramCopyWith<$Res> {
  factory _$$StudyProgramBaseImplCopyWith(_$StudyProgramBaseImpl value,
          $Res Function(_$StudyProgramBaseImpl) then) =
      __$$StudyProgramBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) String faculty,
      @HiveField(5) String fieldOfStudy,
      @HiveField(6) String studyMode,
      @HiveField(7) String degreeOfStudy,
      @HiveField(8) String startDate,
      @HiveField(9) Tenant tenant});

  @override
  $TenantCopyWith<$Res> get tenant;
}

/// @nodoc
class __$$StudyProgramBaseImplCopyWithImpl<$Res>
    extends _$StudyProgramCopyWithImpl<$Res, _$StudyProgramBaseImpl>
    implements _$$StudyProgramBaseImplCopyWith<$Res> {
  __$$StudyProgramBaseImplCopyWithImpl(_$StudyProgramBaseImpl _value,
      $Res Function(_$StudyProgramBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? name = null,
    Object? faculty = null,
    Object? fieldOfStudy = null,
    Object? studyMode = null,
    Object? degreeOfStudy = null,
    Object? startDate = null,
    Object? tenant = null,
  }) {
    return _then(_$StudyProgramBaseImpl(
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
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: null == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as String,
      degreeOfStudy: null == degreeOfStudy
          ? _value.degreeOfStudy
          : degreeOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      tenant: null == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.studyProgramBase)
class _$StudyProgramBaseImpl implements StudyProgramBase {
  _$StudyProgramBaseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.name,
      @HiveField(4) required this.faculty,
      @HiveField(5) required this.fieldOfStudy,
      @HiveField(6) required this.studyMode,
      @HiveField(7) required this.degreeOfStudy,
      @HiveField(8) required this.startDate,
      @HiveField(9) required this.tenant,
      final String? $type})
      : $type = $type ?? 'base';

  factory _$StudyProgramBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyProgramBaseImplFromJson(json);

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
  final String faculty;
  @override
  @HiveField(5)
  final String fieldOfStudy;
  @override
  @HiveField(6)
  final String studyMode;
  @override
  @HiveField(7)
  final String degreeOfStudy;
  @override
  @HiveField(8)
  final String startDate;
  @override
  @HiveField(9)
  final Tenant tenant;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StudyProgram.base(id: $id, created: $created, updated: $updated, name: $name, faculty: $faculty, fieldOfStudy: $fieldOfStudy, studyMode: $studyMode, degreeOfStudy: $degreeOfStudy, startDate: $startDate, tenant: $tenant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyProgramBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.studyMode, studyMode) ||
                other.studyMode == studyMode) &&
            (identical(other.degreeOfStudy, degreeOfStudy) ||
                other.degreeOfStudy == degreeOfStudy) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, name,
      faculty, fieldOfStudy, studyMode, degreeOfStudy, startDate, tenant);

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyProgramBaseImplCopyWith<_$StudyProgramBaseImpl> get copyWith =>
      __$$StudyProgramBaseImplCopyWithImpl<_$StudyProgramBaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)
        base,
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)
        ext,
  }) {
    return base(id, created, updated, name, faculty, fieldOfStudy, studyMode,
        degreeOfStudy, startDate, tenant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)?
        base,
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)?
        ext,
  }) {
    return base?.call(id, created, updated, name, faculty, fieldOfStudy,
        studyMode, degreeOfStudy, startDate, tenant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)?
        base,
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)?
        ext,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(id, created, updated, name, faculty, fieldOfStudy, studyMode,
          degreeOfStudy, startDate, tenant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyProgramBase value) base,
    required TResult Function(StudyProgramExt value) ext,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyProgramBase value)? base,
    TResult? Function(StudyProgramExt value)? ext,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyProgramBase value)? base,
    TResult Function(StudyProgramExt value)? ext,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyProgramBaseImplToJson(
      this,
    );
  }
}

abstract class StudyProgramBase implements StudyProgram {
  factory StudyProgramBase(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final String name,
      @HiveField(4) required final String faculty,
      @HiveField(5) required final String fieldOfStudy,
      @HiveField(6) required final String studyMode,
      @HiveField(7) required final String degreeOfStudy,
      @HiveField(8) required final String startDate,
      @HiveField(9) required final Tenant tenant}) = _$StudyProgramBaseImpl;

  factory StudyProgramBase.fromJson(Map<String, dynamic> json) =
      _$StudyProgramBaseImpl.fromJson;

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
  String get faculty;
  @override
  @HiveField(5)
  String get fieldOfStudy;
  @override
  @HiveField(6)
  String get studyMode;
  @override
  @HiveField(7)
  String get degreeOfStudy;
  @override
  @HiveField(8)
  String get startDate;
  @override
  @HiveField(9)
  Tenant get tenant;

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyProgramBaseImplCopyWith<_$StudyProgramBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudyProgramExtImplCopyWith<$Res>
    implements $StudyProgramCopyWith<$Res> {
  factory _$$StudyProgramExtImplCopyWith(_$StudyProgramExtImpl value,
          $Res Function(_$StudyProgramExtImpl) then) =
      __$$StudyProgramExtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) String faculty,
      @HiveField(5) String fieldOfStudy,
      @HiveField(6) String studyMode,
      @HiveField(7) String degreeOfStudy,
      @HiveField(8) String startDate,
      @HiveField(9) Tenant tenant,
      @HiveField(10) List<StudySemester> semesters});

  @override
  $TenantCopyWith<$Res> get tenant;
}

/// @nodoc
class __$$StudyProgramExtImplCopyWithImpl<$Res>
    extends _$StudyProgramCopyWithImpl<$Res, _$StudyProgramExtImpl>
    implements _$$StudyProgramExtImplCopyWith<$Res> {
  __$$StudyProgramExtImplCopyWithImpl(
      _$StudyProgramExtImpl _value, $Res Function(_$StudyProgramExtImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? name = null,
    Object? faculty = null,
    Object? fieldOfStudy = null,
    Object? studyMode = null,
    Object? degreeOfStudy = null,
    Object? startDate = null,
    Object? tenant = null,
    Object? semesters = null,
  }) {
    return _then(_$StudyProgramExtImpl(
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
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: null == fieldOfStudy
          ? _value.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as String,
      degreeOfStudy: null == degreeOfStudy
          ? _value.degreeOfStudy
          : degreeOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      tenant: null == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant,
      semesters: null == semesters
          ? _value._semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<StudySemester>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.studyProgram)
class _$StudyProgramExtImpl
    with CollectLessonData, _CollectLessonDataImpl
    implements StudyProgramExt {
  _$StudyProgramExtImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.name,
      @HiveField(4) required this.faculty,
      @HiveField(5) required this.fieldOfStudy,
      @HiveField(6) required this.studyMode,
      @HiveField(7) required this.degreeOfStudy,
      @HiveField(8) required this.startDate,
      @HiveField(9) required this.tenant,
      @HiveField(10) required final List<StudySemester> semesters,
      final String? $type})
      : _semesters = semesters,
        $type = $type ?? 'ext';

  factory _$StudyProgramExtImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyProgramExtImplFromJson(json);

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
  final String faculty;
  @override
  @HiveField(5)
  final String fieldOfStudy;
  @override
  @HiveField(6)
  final String studyMode;
  @override
  @HiveField(7)
  final String degreeOfStudy;
  @override
  @HiveField(8)
  final String startDate;
  @override
  @HiveField(9)
  final Tenant tenant;
// extended info
  final List<StudySemester> _semesters;
// extended info
  @override
  @HiveField(10)
  List<StudySemester> get semesters {
    if (_semesters is EqualUnmodifiableListView) return _semesters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_semesters);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StudyProgram.ext(id: $id, created: $created, updated: $updated, name: $name, faculty: $faculty, fieldOfStudy: $fieldOfStudy, studyMode: $studyMode, degreeOfStudy: $degreeOfStudy, startDate: $startDate, tenant: $tenant, semesters: $semesters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyProgramExtImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.studyMode, studyMode) ||
                other.studyMode == studyMode) &&
            (identical(other.degreeOfStudy, degreeOfStudy) ||
                other.degreeOfStudy == degreeOfStudy) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            const DeepCollectionEquality()
                .equals(other._semesters, _semesters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      name,
      faculty,
      fieldOfStudy,
      studyMode,
      degreeOfStudy,
      startDate,
      tenant,
      const DeepCollectionEquality().hash(_semesters));

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyProgramExtImplCopyWith<_$StudyProgramExtImpl> get copyWith =>
      __$$StudyProgramExtImplCopyWithImpl<_$StudyProgramExtImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)
        base,
    required TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)
        ext,
  }) {
    return ext(id, created, updated, name, faculty, fieldOfStudy, studyMode,
        degreeOfStudy, startDate, tenant, semesters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)?
        base,
    TResult? Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)?
        ext,
  }) {
    return ext?.call(id, created, updated, name, faculty, fieldOfStudy,
        studyMode, degreeOfStudy, startDate, tenant, semesters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant)?
        base,
    TResult Function(
            @HiveField(0) String id,
            @HiveField(1) @DateTimeConverter() DateTime? created,
            @HiveField(2) @DateTimeConverter() DateTime? updated,
            @HiveField(3) String name,
            @HiveField(4) String faculty,
            @HiveField(5) String fieldOfStudy,
            @HiveField(6) String studyMode,
            @HiveField(7) String degreeOfStudy,
            @HiveField(8) String startDate,
            @HiveField(9) Tenant tenant,
            @HiveField(10) List<StudySemester> semesters)?
        ext,
    required TResult orElse(),
  }) {
    if (ext != null) {
      return ext(id, created, updated, name, faculty, fieldOfStudy, studyMode,
          degreeOfStudy, startDate, tenant, semesters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyProgramBase value) base,
    required TResult Function(StudyProgramExt value) ext,
  }) {
    return ext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyProgramBase value)? base,
    TResult? Function(StudyProgramExt value)? ext,
  }) {
    return ext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyProgramBase value)? base,
    TResult Function(StudyProgramExt value)? ext,
    required TResult orElse(),
  }) {
    if (ext != null) {
      return ext(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyProgramExtImplToJson(
      this,
    );
  }
}

abstract class StudyProgramExt
    implements StudyProgram, CollectLessonData, _CollectLessonDataImpl {
  factory StudyProgramExt(
          {@HiveField(0) required final String id,
          @HiveField(1) @DateTimeConverter() final DateTime? created,
          @HiveField(2) @DateTimeConverter() final DateTime? updated,
          @HiveField(3) required final String name,
          @HiveField(4) required final String faculty,
          @HiveField(5) required final String fieldOfStudy,
          @HiveField(6) required final String studyMode,
          @HiveField(7) required final String degreeOfStudy,
          @HiveField(8) required final String startDate,
          @HiveField(9) required final Tenant tenant,
          @HiveField(10) required final List<StudySemester> semesters}) =
      _$StudyProgramExtImpl;

  factory StudyProgramExt.fromJson(Map<String, dynamic> json) =
      _$StudyProgramExtImpl.fromJson;

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
  String get faculty;
  @override
  @HiveField(5)
  String get fieldOfStudy;
  @override
  @HiveField(6)
  String get studyMode;
  @override
  @HiveField(7)
  String get degreeOfStudy;
  @override
  @HiveField(8)
  String get startDate;
  @override
  @HiveField(9)
  Tenant get tenant; // extended info
  @HiveField(10)
  List<StudySemester> get semesters;

  /// Create a copy of StudyProgram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyProgramExtImplCopyWith<_$StudyProgramExtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
