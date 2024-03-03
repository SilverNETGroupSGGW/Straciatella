// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEvent {
  Lesson get lesson => throw _privateConstructorUsedError;
  Subject get fromSubject => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleEventCopyWith<ScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
  @useResult
  $Res call({Lesson lesson, Subject fromSubject});

  $LessonCopyWith<$Res> get lesson;
  $SubjectCopyWith<$Res> get fromSubject;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? fromSubject = null,
  }) {
    return _then(_value.copyWith(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      fromSubject: null == fromSubject
          ? _value.fromSubject
          : fromSubject // ignore: cast_nullable_to_non_nullable
              as Subject,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res> get lesson {
    return $LessonCopyWith<$Res>(_value.lesson, (value) {
      return _then(_value.copyWith(lesson: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res> get fromSubject {
    return $SubjectCopyWith<$Res>(_value.fromSubject, (value) {
      return _then(_value.copyWith(fromSubject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleEventImplCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$ScheduleEventImplCopyWith(
          _$ScheduleEventImpl value, $Res Function(_$ScheduleEventImpl) then) =
      __$$ScheduleEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Lesson lesson, Subject fromSubject});

  @override
  $LessonCopyWith<$Res> get lesson;
  @override
  $SubjectCopyWith<$Res> get fromSubject;
}

/// @nodoc
class __$$ScheduleEventImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$ScheduleEventImpl>
    implements _$$ScheduleEventImplCopyWith<$Res> {
  __$$ScheduleEventImplCopyWithImpl(
      _$ScheduleEventImpl _value, $Res Function(_$ScheduleEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lesson = null,
    Object? fromSubject = null,
  }) {
    return _then(_$ScheduleEventImpl(
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
      fromSubject: null == fromSubject
          ? _value.fromSubject
          : fromSubject // ignore: cast_nullable_to_non_nullable
              as Subject,
    ));
  }
}

/// @nodoc

class _$ScheduleEventImpl extends _ScheduleEvent {
  _$ScheduleEventImpl({required this.lesson, required this.fromSubject})
      : super._();

  @override
  final Lesson lesson;
  @override
  final Subject fromSubject;

  @override
  String toString() {
    return 'ScheduleEvent(lesson: $lesson, fromSubject: $fromSubject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEventImpl &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.fromSubject, fromSubject) ||
                other.fromSubject == fromSubject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lesson, fromSubject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEventImplCopyWith<_$ScheduleEventImpl> get copyWith =>
      __$$ScheduleEventImplCopyWithImpl<_$ScheduleEventImpl>(this, _$identity);
}

abstract class _ScheduleEvent extends ScheduleEvent {
  factory _ScheduleEvent(
      {required final Lesson lesson,
      required final Subject fromSubject}) = _$ScheduleEventImpl;
  _ScheduleEvent._() : super._();

  @override
  Lesson get lesson;
  @override
  Subject get fromSubject;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleEventImplCopyWith<_$ScheduleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
