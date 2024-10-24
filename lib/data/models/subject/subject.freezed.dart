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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get isRemote => throw _privateConstructorUsedError;
  @HiveField(5)
  String get comment => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get isConditional => throw _privateConstructorUsedError;
  @HiveField(7)
  SubjectType get type => throw _privateConstructorUsedError;
  @HiveField(8)
  Classroom get classroom => throw _privateConstructorUsedError;
  @HiveField(9)
  List<LecturerBase> get lecturers => throw _privateConstructorUsedError;
  @HiveField(10)
  List<StudentGroup> get groups => throw _privateConstructorUsedError;
  @HiveField(11)
  List<LessonDef> get lessons => throw _privateConstructorUsedError;

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
      @HiveField(3) String name,
      @HiveField(4) bool isRemote,
      @HiveField(5) String comment,
      @HiveField(6) bool isConditional,
      @HiveField(7) SubjectType type,
      @HiveField(8) Classroom classroom,
      @HiveField(9) List<LecturerBase> lecturers,
      @HiveField(10) List<StudentGroup> groups,
      @HiveField(11) List<LessonDef> lessons});

  $SubjectTypeCopyWith<$Res> get type;
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
    Object? name = null,
    Object? isRemote = null,
    Object? comment = null,
    Object? isConditional = null,
    Object? type = null,
    Object? classroom = null,
    Object? lecturers = null,
    Object? groups = null,
    Object? lessons = null,
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
      isRemote: null == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isConditional: null == isConditional
          ? _value.isConditional
          : isConditional // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SubjectType,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
      lecturers: null == lecturers
          ? _value.lecturers
          : lecturers // ignore: cast_nullable_to_non_nullable
              as List<LecturerBase>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<StudentGroup>,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonDef>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectTypeCopyWith<$Res> get type {
    return $SubjectTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
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
      @HiveField(3) String name,
      @HiveField(4) bool isRemote,
      @HiveField(5) String comment,
      @HiveField(6) bool isConditional,
      @HiveField(7) SubjectType type,
      @HiveField(8) Classroom classroom,
      @HiveField(9) List<LecturerBase> lecturers,
      @HiveField(10) List<StudentGroup> groups,
      @HiveField(11) List<LessonDef> lessons});

  @override
  $SubjectTypeCopyWith<$Res> get type;
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
    Object? name = null,
    Object? isRemote = null,
    Object? comment = null,
    Object? isConditional = null,
    Object? type = null,
    Object? classroom = null,
    Object? lecturers = null,
    Object? groups = null,
    Object? lessons = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isRemote: null == isRemote
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isConditional: null == isConditional
          ? _value.isConditional
          : isConditional // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SubjectType,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
      lecturers: null == lecturers
          ? _value._lecturers
          : lecturers // ignore: cast_nullable_to_non_nullable
              as List<LecturerBase>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<StudentGroup>,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonDef>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.subject)
class _$SubjectImpl with CreateLessons implements _Subject {
  _$SubjectImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.name,
      @HiveField(4) required this.isRemote,
      @HiveField(5) required this.comment,
      @HiveField(6) required this.isConditional,
      @HiveField(7) required this.type,
      @HiveField(8) required this.classroom,
      @HiveField(9) required final List<LecturerBase> lecturers,
      @HiveField(10) required final List<StudentGroup> groups,
      @HiveField(11) required final List<LessonDef> lessons})
      : _lecturers = lecturers,
        _groups = groups,
        _lessons = lessons;

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
  final String name;
  @override
  @HiveField(4)
  final bool isRemote;
  @override
  @HiveField(5)
  final String comment;
  @override
  @HiveField(6)
  final bool isConditional;
  @override
  @HiveField(7)
  final SubjectType type;
  @override
  @HiveField(8)
  final Classroom classroom;
  final List<LecturerBase> _lecturers;
  @override
  @HiveField(9)
  List<LecturerBase> get lecturers {
    if (_lecturers is EqualUnmodifiableListView) return _lecturers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lecturers);
  }

  final List<StudentGroup> _groups;
  @override
  @HiveField(10)
  List<StudentGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<LessonDef> _lessons;
  @override
  @HiveField(11)
  List<LessonDef> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'Subject(id: $id, created: $created, updated: $updated, name: $name, isRemote: $isRemote, comment: $comment, isConditional: $isConditional, type: $type, classroom: $classroom, lecturers: $lecturers, groups: $groups, lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isRemote, isRemote) ||
                other.isRemote == isRemote) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isConditional, isConditional) ||
                other.isConditional == isConditional) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            const DeepCollectionEquality()
                .equals(other._lecturers, _lecturers) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      name,
      isRemote,
      comment,
      isConditional,
      type,
      classroom,
      const DeepCollectionEquality().hash(_lecturers),
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_lessons));

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

abstract class _Subject implements Subject, CreateLessons {
  factory _Subject(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final String name,
      @HiveField(4) required final bool isRemote,
      @HiveField(5) required final String comment,
      @HiveField(6) required final bool isConditional,
      @HiveField(7) required final SubjectType type,
      @HiveField(8) required final Classroom classroom,
      @HiveField(9) required final List<LecturerBase> lecturers,
      @HiveField(10) required final List<StudentGroup> groups,
      @HiveField(11) required final List<LessonDef> lessons}) = _$SubjectImpl;

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
  String get name;
  @override
  @HiveField(4)
  bool get isRemote;
  @override
  @HiveField(5)
  String get comment;
  @override
  @HiveField(6)
  bool get isConditional;
  @override
  @HiveField(7)
  SubjectType get type;
  @override
  @HiveField(8)
  Classroom get classroom;
  @override
  @HiveField(9)
  List<LecturerBase> get lecturers;
  @override
  @HiveField(10)
  List<StudentGroup> get groups;
  @override
  @HiveField(11)
  List<LessonDef> get lessons;
  @override
  @JsonKey(ignore: true)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectType _$SubjectTypeFromJson(Map<String, dynamic> json) {
  return _SubjectType.fromJson(json);
}

/// @nodoc
mixin _$SubjectType {
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
  bool get isPrimitiveType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectTypeCopyWith<SubjectType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectTypeCopyWith<$Res> {
  factory $SubjectTypeCopyWith(
          SubjectType value, $Res Function(SubjectType) then) =
      _$SubjectTypeCopyWithImpl<$Res, SubjectType>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) bool isPrimitiveType});
}

/// @nodoc
class _$SubjectTypeCopyWithImpl<$Res, $Val extends SubjectType>
    implements $SubjectTypeCopyWith<$Res> {
  _$SubjectTypeCopyWithImpl(this._value, this._then);

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
    Object? isPrimitiveType = null,
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
      isPrimitiveType: null == isPrimitiveType
          ? _value.isPrimitiveType
          : isPrimitiveType // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectTypeImplCopyWith<$Res>
    implements $SubjectTypeCopyWith<$Res> {
  factory _$$SubjectTypeImplCopyWith(
          _$SubjectTypeImpl value, $Res Function(_$SubjectTypeImpl) then) =
      __$$SubjectTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @DateTimeConverter() DateTime? created,
      @HiveField(2) @DateTimeConverter() DateTime? updated,
      @HiveField(3) String name,
      @HiveField(4) bool isPrimitiveType});
}

/// @nodoc
class __$$SubjectTypeImplCopyWithImpl<$Res>
    extends _$SubjectTypeCopyWithImpl<$Res, _$SubjectTypeImpl>
    implements _$$SubjectTypeImplCopyWith<$Res> {
  __$$SubjectTypeImplCopyWithImpl(
      _$SubjectTypeImpl _value, $Res Function(_$SubjectTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? name = null,
    Object? isPrimitiveType = null,
  }) {
    return _then(_$SubjectTypeImpl(
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
      isPrimitiveType: null == isPrimitiveType
          ? _value.isPrimitiveType
          : isPrimitiveType // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeIds.subjectType)
class _$SubjectTypeImpl implements _SubjectType {
  _$SubjectTypeImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @DateTimeConverter() this.created,
      @HiveField(2) @DateTimeConverter() this.updated,
      @HiveField(3) required this.name,
      @HiveField(4) required this.isPrimitiveType});

  factory _$SubjectTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectTypeImplFromJson(json);

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
  final bool isPrimitiveType;

  @override
  String toString() {
    return 'SubjectType(id: $id, created: $created, updated: $updated, name: $name, isPrimitiveType: $isPrimitiveType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPrimitiveType, isPrimitiveType) ||
                other.isPrimitiveType == isPrimitiveType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created, updated, name, isPrimitiveType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectTypeImplCopyWith<_$SubjectTypeImpl> get copyWith =>
      __$$SubjectTypeImplCopyWithImpl<_$SubjectTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectTypeImplToJson(
      this,
    );
  }
}

abstract class _SubjectType implements SubjectType {
  factory _SubjectType(
      {@HiveField(0) required final String id,
      @HiveField(1) @DateTimeConverter() final DateTime? created,
      @HiveField(2) @DateTimeConverter() final DateTime? updated,
      @HiveField(3) required final String name,
      @HiveField(4) required final bool isPrimitiveType}) = _$SubjectTypeImpl;

  factory _SubjectType.fromJson(Map<String, dynamic> json) =
      _$SubjectTypeImpl.fromJson;

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
  bool get isPrimitiveType;
  @override
  @JsonKey(ignore: true)
  _$$SubjectTypeImplCopyWith<_$SubjectTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
