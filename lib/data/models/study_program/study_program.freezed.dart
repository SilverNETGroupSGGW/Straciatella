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
  return _StudyProgram.fromJson(json);
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
  String get startDate => throw _privateConstructorUsedError; // extended info
  @HiveField(9)
  List<StudySemester>? get semesters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @HiveField(9) List<StudySemester>? semesters});
}

/// @nodoc
class _$StudyProgramCopyWithImpl<$Res, $Val extends StudyProgram>
    implements $StudyProgramCopyWith<$Res> {
  _$StudyProgramCopyWithImpl(this._value, this._then);

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
    Object? faculty = null,
    Object? fieldOfStudy = null,
    Object? studyMode = null,
    Object? degreeOfStudy = null,
    Object? startDate = null,
    Object? semesters = freezed,
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
      semesters: freezed == semesters
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<StudySemester>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyProgramImplCopyWith<$Res>
    implements $StudyProgramCopyWith<$Res> {
  factory _$$StudyProgramImplCopyWith(
          _$StudyProgramImpl value, $Res Function(_$StudyProgramImpl) then) =
      __$$StudyProgramImplCopyWithImpl<$Res>;
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
      @HiveField(9) List<StudySemester>? semesters});
}

/// @nodoc
class __$$StudyProgramImplCopyWithImpl<$Res>
    extends _$StudyProgramCopyWithImpl<$Res, _$StudyProgramImpl>
    implements _$$StudyProgramImplCopyWith<$Res> {
  __$$StudyProgramImplCopyWithImpl(
      _$StudyProgramImpl _value, $Res Function(_$StudyProgramImpl) _then)
      : super(_value, _then);

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
    Object? semesters = freezed,
  }) {
    return _then(_$StudyProgramImpl(
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
      semesters: freezed == semesters
          ? _value._semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<StudySemester>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.studyProgram)
class _$StudyProgramImpl implements _StudyProgram {
  _$StudyProgramImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.name,
      @HiveField(4) required this.faculty,
      @HiveField(5) required this.fieldOfStudy,
      @HiveField(6) required this.studyMode,
      @HiveField(7) required this.degreeOfStudy,
      @HiveField(8) required this.startDate,
      @HiveField(9) final List<StudySemester>? semesters})
      : _semesters = semesters;

  factory _$StudyProgramImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyProgramImplFromJson(json);

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
// extended info
  final List<StudySemester>? _semesters;
// extended info
  @override
  @HiveField(9)
  List<StudySemester>? get semesters {
    final value = _semesters;
    if (value == null) return null;
    if (_semesters is EqualUnmodifiableListView) return _semesters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StudyProgram(id: $id, created: $created, updated: $updated, name: $name, faculty: $faculty, fieldOfStudy: $fieldOfStudy, studyMode: $studyMode, degreeOfStudy: $degreeOfStudy, startDate: $startDate, semesters: $semesters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyProgramImpl &&
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
            const DeepCollectionEquality()
                .equals(other._semesters, _semesters));
  }

  @JsonKey(ignore: true)
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
      const DeepCollectionEquality().hash(_semesters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyProgramImplCopyWith<_$StudyProgramImpl> get copyWith =>
      __$$StudyProgramImplCopyWithImpl<_$StudyProgramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyProgramImplToJson(
      this,
    );
  }
}

abstract class _StudyProgram implements StudyProgram {
  factory _StudyProgram(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final String name,
      @HiveField(4) required final String faculty,
      @HiveField(5) required final String fieldOfStudy,
      @HiveField(6) required final String studyMode,
      @HiveField(7) required final String degreeOfStudy,
      @HiveField(8) required final String startDate,
      @HiveField(9) final List<StudySemester>? semesters}) = _$StudyProgramImpl;

  factory _StudyProgram.fromJson(Map<String, dynamic> json) =
      _$StudyProgramImpl.fromJson;

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
  @override // extended info
  @HiveField(9)
  List<StudySemester>? get semesters;
  @override
  @JsonKey(ignore: true)
  _$$StudyProgramImplCopyWith<_$StudyProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
