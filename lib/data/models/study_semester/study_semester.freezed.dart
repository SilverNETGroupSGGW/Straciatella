// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_semester.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudySemester _$StudySemesterFromJson(Map<String, dynamic> json) {
  return _StudySemester.fromJson(json);
}

/// @nodoc
mixin _$StudySemester {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  int get year => throw _privateConstructorUsedError;
  @HiveField(4)
  int get semester => throw _privateConstructorUsedError;
  @HiveField(5)
  @DateTimeConverter()
  DateTime get startDate => throw _privateConstructorUsedError; // extended info
  @HiveField(6)
  List<Subject>? get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudySemesterCopyWith<StudySemester> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudySemesterCopyWith<$Res> {
  factory $StudySemesterCopyWith(
          StudySemester value, $Res Function(StudySemester) then) =
      _$StudySemesterCopyWithImpl<$Res, StudySemester>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) int year,
      @HiveField(4) int semester,
      @HiveField(5) @DateTimeConverter() DateTime startDate,
      @HiveField(6) List<Subject>? subjects});
}

/// @nodoc
class _$StudySemesterCopyWithImpl<$Res, $Val extends StudySemester>
    implements $StudySemesterCopyWith<$Res> {
  _$StudySemesterCopyWithImpl(this._value, this._then);

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
    Object? year = null,
    Object? semester = null,
    Object? startDate = null,
    Object? subjects = freezed,
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudySemesterImplCopyWith<$Res>
    implements $StudySemesterCopyWith<$Res> {
  factory _$$StudySemesterImplCopyWith(
          _$StudySemesterImpl value, $Res Function(_$StudySemesterImpl) then) =
      __$$StudySemesterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) int year,
      @HiveField(4) int semester,
      @HiveField(5) @DateTimeConverter() DateTime startDate,
      @HiveField(6) List<Subject>? subjects});
}

/// @nodoc
class __$$StudySemesterImplCopyWithImpl<$Res>
    extends _$StudySemesterCopyWithImpl<$Res, _$StudySemesterImpl>
    implements _$$StudySemesterImplCopyWith<$Res> {
  __$$StudySemesterImplCopyWithImpl(
      _$StudySemesterImpl _value, $Res Function(_$StudySemesterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? year = null,
    Object? semester = null,
    Object? startDate = null,
    Object? subjects = freezed,
  }) {
    return _then(_$StudySemesterImpl(
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.studySemester)
class _$StudySemesterImpl implements _StudySemester {
  _$StudySemesterImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.year,
      @HiveField(4) required this.semester,
      @HiveField(5) @DateTimeConverter() required this.startDate,
      @HiveField(6) final List<Subject>? subjects})
      : _subjects = subjects;

  factory _$StudySemesterImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudySemesterImplFromJson(json);

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
  final int year;
  @override
  @HiveField(4)
  final int semester;
  @override
  @HiveField(5)
  @DateTimeConverter()
  final DateTime startDate;
// extended info
  final List<Subject>? _subjects;
// extended info
  @override
  @HiveField(6)
  List<Subject>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StudySemester(id: $id, created: $created, updated: $updated, year: $year, semester: $semester, startDate: $startDate, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudySemesterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, year,
      semester, startDate, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudySemesterImplCopyWith<_$StudySemesterImpl> get copyWith =>
      __$$StudySemesterImplCopyWithImpl<_$StudySemesterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudySemesterImplToJson(
      this,
    );
  }
}

abstract class _StudySemester implements StudySemester {
  factory _StudySemester(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final int year,
      @HiveField(4) required final int semester,
      @HiveField(5) @DateTimeConverter() required final DateTime startDate,
      @HiveField(6) final List<Subject>? subjects}) = _$StudySemesterImpl;

  factory _StudySemester.fromJson(Map<String, dynamic> json) =
      _$StudySemesterImpl.fromJson;

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
  int get year;
  @override
  @HiveField(4)
  int get semester;
  @override
  @HiveField(5)
  @DateTimeConverter()
  DateTime get startDate;
  @override // extended info
  @HiveField(6)
  List<Subject>? get subjects;
  @override
  @JsonKey(ignore: true)
  _$$StudySemesterImplCopyWith<_$StudySemesterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
