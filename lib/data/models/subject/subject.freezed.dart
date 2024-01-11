// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @HiveField(2)
  @DateTimeConverter()
  DateTime? get updated => throw _privateConstructorUsedError;
  @HiveField(3)
  String get scheduleId => throw _privateConstructorUsedError;
  @HiveField(4)
  String get name => throw _privateConstructorUsedError;
  @HiveField(5)
  String get type => throw _privateConstructorUsedError;
  @HiveField(6)
  String get startTime => throw _privateConstructorUsedError;
  @HiveField(7)
  @DayOfWeekConverter()
  DayOfWeek get dayOfWeek => throw _privateConstructorUsedError;
  @HiveField(8)
  @ApiDurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get isRemote => throw _privateConstructorUsedError;
  @HiveField(10)
  String get comment => throw _privateConstructorUsedError;
  @HiveField(11)
  ScheduleBase? get schedule => throw _privateConstructorUsedError;
  @HiveField(12)
  List<LecturerBase>? get lecturers => throw _privateConstructorUsedError;
  @HiveField(13)
  Classroom get classroom => throw _privateConstructorUsedError;
  @HiveField(14)
  List<Lesson> get lessons => throw _privateConstructorUsedError;
  @HiveField(15)
  List<ScheduleGroup> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String scheduleId,
      @HiveField(4) String name,
      @HiveField(5) String type,
      @HiveField(6) String startTime,
      @HiveField(7) @DayOfWeekConverter() DayOfWeek dayOfWeek,
      @HiveField(8) @ApiDurationConverter() Duration duration,
      @HiveField(9) bool isRemote,
      @HiveField(10) String comment,
      @HiveField(11) ScheduleBase? schedule,
      @HiveField(12) List<LecturerBase>? lecturers,
      @HiveField(13) Classroom classroom,
      @HiveField(14) List<Lesson> lessons,
      @HiveField(15) List<ScheduleGroup> groups});

  $ScheduleBaseCopyWith<$Res>? get schedule;
  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

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
    Object? scheduleId = null,
    Object? name = null,
    Object? type = null,
    Object? startTime = null,
    Object? dayOfWeek = null,
    Object? duration = null,
    Object? isRemote = null,
    Object? comment = null,
    Object? schedule = freezed,
    Object? lecturers = freezed,
    Object? classroom = null,
    Object? lessons = null,
    Object? groups = null,
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
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isRemote: null == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleBase?,
      lecturers: freezed == lecturers
          ? _value.lecturers
          : lecturers // ignore: cast_nullable_to_non_nullable
              as List<LecturerBase>?,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<ScheduleGroup>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleBaseCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleBaseCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res> get classroom {
    return $ClassroomCopyWith<$Res>(_value.classroom, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String scheduleId,
      @HiveField(4) String name,
      @HiveField(5) String type,
      @HiveField(6) String startTime,
      @HiveField(7) @DayOfWeekConverter() DayOfWeek dayOfWeek,
      @HiveField(8) @ApiDurationConverter() Duration duration,
      @HiveField(9) bool isRemote,
      @HiveField(10) String comment,
      @HiveField(11) ScheduleBase? schedule,
      @HiveField(12) List<LecturerBase>? lecturers,
      @HiveField(13) Classroom classroom,
      @HiveField(14) List<Lesson> lessons,
      @HiveField(15) List<ScheduleGroup> groups});

  @override
  $ScheduleBaseCopyWith<$Res>? get schedule;
  @override
  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? scheduleId = null,
    Object? name = null,
    Object? type = null,
    Object? startTime = null,
    Object? dayOfWeek = null,
    Object? duration = null,
    Object? isRemote = null,
    Object? comment = null,
    Object? schedule = freezed,
    Object? lecturers = freezed,
    Object? classroom = null,
    Object? lessons = null,
    Object? groups = null,
  }) {
    return _then(_$SubjectImpl(
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
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isRemote: null == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleBase?,
      lecturers: freezed == lecturers
          ? _value._lecturers
          : lecturers // ignore: cast_nullable_to_non_nullable
              as List<LecturerBase>?,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<ScheduleGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.subject, adapterName: "SubjectAdapter")
class _$SubjectImpl extends _Subject {
  _$SubjectImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.scheduleId,
      @HiveField(4) required this.name,
      @HiveField(5) required this.type,
      @HiveField(6) required this.startTime,
      @HiveField(7) @DayOfWeekConverter() required this.dayOfWeek,
      @HiveField(8) @ApiDurationConverter() required this.duration,
      @HiveField(9) required this.isRemote,
      @HiveField(10) required this.comment,
      @HiveField(11) this.schedule,
      @HiveField(12) final List<LecturerBase>? lecturers,
      @HiveField(13) required this.classroom,
      @HiveField(14) required final List<Lesson> lessons,
      @HiveField(15) required final List<ScheduleGroup> groups})
      : _lecturers = lecturers,
        _lessons = lessons,
        _groups = groups,
        super._();

  factory _$SubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectImplFromJson(json);

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
  final String scheduleId;
  @override
  @HiveField(4)
  final String name;
  @override
  @HiveField(5)
  final String type;
  @override
  @HiveField(6)
  final String startTime;
  @override
  @HiveField(7)
  @DayOfWeekConverter()
  final DayOfWeek dayOfWeek;
  @override
  @HiveField(8)
  @ApiDurationConverter()
  final Duration duration;
  @override
  @HiveField(9)
  final bool isRemote;
  @override
  @HiveField(10)
  final String comment;
  @override
  @HiveField(11)
  final ScheduleBase? schedule;
  final List<LecturerBase>? _lecturers;
  @override
  @HiveField(12)
  List<LecturerBase>? get lecturers {
    final value = _lecturers;
    if (value == null) return null;
    if (_lecturers is EqualUnmodifiableListView) return _lecturers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(13)
  final Classroom classroom;
  final List<Lesson> _lessons;
  @override
  @HiveField(14)
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<ScheduleGroup> _groups;
  @override
  @HiveField(15)
  List<ScheduleGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'Subject(id: $id, created: $created, updated: $updated, scheduleId: $scheduleId, name: $name, type: $type, startTime: $startTime, dayOfWeek: $dayOfWeek, duration: $duration, isRemote: $isRemote, comment: $comment, schedule: $schedule, lecturers: $lecturers, classroom: $classroom, lessons: $lessons, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isRemote, isRemote) ||
                other.isRemote == isRemote) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            const DeepCollectionEquality()
                .equals(other._lecturers, _lecturers) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      scheduleId,
      name,
      type,
      startTime,
      dayOfWeek,
      duration,
      isRemote,
      comment,
      schedule,
      const DeepCollectionEquality().hash(_lecturers),
      classroom,
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectImplToJson(
      this,
    );
  }
}

abstract class _Subject extends Subject {
  factory _Subject(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final String scheduleId,
      @HiveField(4) required final String name,
      @HiveField(5) required final String type,
      @HiveField(6) required final String startTime,
      @HiveField(7) @DayOfWeekConverter() required final DayOfWeek dayOfWeek,
      @HiveField(8) @ApiDurationConverter() required final Duration duration,
      @HiveField(9) required final bool isRemote,
      @HiveField(10) required final String comment,
      @HiveField(11) final ScheduleBase? schedule,
      @HiveField(12) final List<LecturerBase>? lecturers,
      @HiveField(13) required final Classroom classroom,
      @HiveField(14) required final List<Lesson> lessons,
      @HiveField(15)
      required final List<ScheduleGroup> groups}) = _$SubjectImpl;
  _Subject._() : super._();

  factory _Subject.fromJson(Map<String, dynamic> json) = _$SubjectImpl.fromJson;

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
  String get scheduleId;
  @override
  @HiveField(4)
  String get name;
  @override
  @HiveField(5)
  String get type;
  @override
  @HiveField(6)
  String get startTime;
  @override
  @HiveField(7)
  @DayOfWeekConverter()
  DayOfWeek get dayOfWeek;
  @override
  @HiveField(8)
  @ApiDurationConverter()
  Duration get duration;
  @override
  @HiveField(9)
  bool get isRemote;
  @override
  @HiveField(10)
  String get comment;
  @override
  @HiveField(11)
  ScheduleBase? get schedule;
  @override
  @HiveField(12)
  List<LecturerBase>? get lecturers;
  @override
  @HiveField(13)
  Classroom get classroom;
  @override
  @HiveField(14)
  List<Lesson> get lessons;
  @override
  @HiveField(15)
  List<ScheduleGroup> get groups;
  @override
  @JsonKey(ignore: true)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
