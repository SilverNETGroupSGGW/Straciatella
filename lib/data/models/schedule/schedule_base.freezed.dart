// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleBase _$ScheduleBaseFromJson(Map<String, dynamic> json) {
  return _ScheduleBase.fromJson(json);
}

/// @nodoc
mixin _$ScheduleBase {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime? get startDate => throw _privateConstructorUsedError;
  @HiveField(4)
  String get name => throw _privateConstructorUsedError;
  @HiveField(5)
  int get year => throw _privateConstructorUsedError;
  @HiveField(6)
  int get semester => throw _privateConstructorUsedError;
  @HiveField(7)
  String get faculty => throw _privateConstructorUsedError;
  @HiveField(8)
  String get fieldOfStudy => throw _privateConstructorUsedError;
  @HiveField(9)
  String get studyMode => throw _privateConstructorUsedError;
  @HiveField(10)
  String get degreeOfStudy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleBaseCopyWith<ScheduleBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleBaseCopyWith<$Res> {
  factory $ScheduleBaseCopyWith(
          ScheduleBase value, $Res Function(ScheduleBase) then) =
      _$ScheduleBaseCopyWithImpl<$Res, ScheduleBase>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) DateTime? startDate,
      @HiveField(4) String name,
      @HiveField(5) int year,
      @HiveField(6) int semester,
      @HiveField(7) String faculty,
      @HiveField(8) String fieldOfStudy,
      @HiveField(9) String studyMode,
      @HiveField(10) String degreeOfStudy});
}

/// @nodoc
class _$ScheduleBaseCopyWithImpl<$Res, $Val extends ScheduleBase>
    implements $ScheduleBaseCopyWith<$Res> {
  _$ScheduleBaseCopyWithImpl(this._value, this._then);

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
    Object? startDate = freezed,
    Object? name = null,
    Object? year = null,
    Object? semester = null,
    Object? faculty = null,
    Object? fieldOfStudy = null,
    Object? studyMode = null,
    Object? degreeOfStudy = null,
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleBaseImplCopyWith<$Res>
    implements $ScheduleBaseCopyWith<$Res> {
  factory _$$ScheduleBaseImplCopyWith(
          _$ScheduleBaseImpl value, $Res Function(_$ScheduleBaseImpl) then) =
      __$$ScheduleBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) DateTime? startDate,
      @HiveField(4) String name,
      @HiveField(5) int year,
      @HiveField(6) int semester,
      @HiveField(7) String faculty,
      @HiveField(8) String fieldOfStudy,
      @HiveField(9) String studyMode,
      @HiveField(10) String degreeOfStudy});
}

/// @nodoc
class __$$ScheduleBaseImplCopyWithImpl<$Res>
    extends _$ScheduleBaseCopyWithImpl<$Res, _$ScheduleBaseImpl>
    implements _$$ScheduleBaseImplCopyWith<$Res> {
  __$$ScheduleBaseImplCopyWithImpl(
      _$ScheduleBaseImpl _value, $Res Function(_$ScheduleBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? startDate = freezed,
    Object? name = null,
    Object? year = null,
    Object? semester = null,
    Object? faculty = null,
    Object? fieldOfStudy = null,
    Object? studyMode = null,
    Object? degreeOfStudy = null,
  }) {
    return _then(_$ScheduleBaseImpl(
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.scheduleBase, adapterName: "ScheduleBaseAdapter")
class _$ScheduleBaseImpl extends _ScheduleBase {
  _$ScheduleBaseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) this.startDate,
      @HiveField(4) required this.name,
      @HiveField(5) required this.year,
      @HiveField(6) required this.semester,
      @HiveField(7) required this.faculty,
      @HiveField(8) required this.fieldOfStudy,
      @HiveField(9) required this.studyMode,
      @HiveField(10) required this.degreeOfStudy})
      : super._();

  factory _$ScheduleBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleBaseImplFromJson(json);

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
  final DateTime? startDate;
  @override
  @HiveField(4)
  final String name;
  @override
  @HiveField(5)
  final int year;
  @override
  @HiveField(6)
  final int semester;
  @override
  @HiveField(7)
  final String faculty;
  @override
  @HiveField(8)
  final String fieldOfStudy;
  @override
  @HiveField(9)
  final String studyMode;
  @override
  @HiveField(10)
  final String degreeOfStudy;

  @override
  String toString() {
    return 'ScheduleBase(id: $id, created: $created, updated: $updated, startDate: $startDate, name: $name, year: $year, semester: $semester, faculty: $faculty, fieldOfStudy: $fieldOfStudy, studyMode: $studyMode, degreeOfStudy: $degreeOfStudy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.studyMode, studyMode) ||
                other.studyMode == studyMode) &&
            (identical(other.degreeOfStudy, degreeOfStudy) ||
                other.degreeOfStudy == degreeOfStudy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, updated, startDate,
      name, year, semester, faculty, fieldOfStudy, studyMode, degreeOfStudy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleBaseImplCopyWith<_$ScheduleBaseImpl> get copyWith =>
      __$$ScheduleBaseImplCopyWithImpl<_$ScheduleBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleBaseImplToJson(
      this,
    );
  }
}

abstract class _ScheduleBase extends ScheduleBase {
  factory _ScheduleBase(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) final DateTime? startDate,
      @HiveField(4) required final String name,
      @HiveField(5) required final int year,
      @HiveField(6) required final int semester,
      @HiveField(7) required final String faculty,
      @HiveField(8) required final String fieldOfStudy,
      @HiveField(9) required final String studyMode,
      @HiveField(10) required final String degreeOfStudy}) = _$ScheduleBaseImpl;
  _ScheduleBase._() : super._();

  factory _ScheduleBase.fromJson(Map<String, dynamic> json) =
      _$ScheduleBaseImpl.fromJson;

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
  DateTime? get startDate;
  @override
  @HiveField(4)
  String get name;
  @override
  @HiveField(5)
  int get year;
  @override
  @HiveField(6)
  int get semester;
  @override
  @HiveField(7)
  String get faculty;
  @override
  @HiveField(8)
  String get fieldOfStudy;
  @override
  @HiveField(9)
  String get studyMode;
  @override
  @HiveField(10)
  String get degreeOfStudy;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleBaseImplCopyWith<_$ScheduleBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
