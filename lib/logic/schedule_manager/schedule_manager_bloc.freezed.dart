// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleManagerEventCopyWith<$Res> {
  factory $ScheduleManagerEventCopyWith(ScheduleManagerEvent value,
          $Res Function(ScheduleManagerEvent) then) =
      _$ScheduleManagerEventCopyWithImpl<$Res, ScheduleManagerEvent>;
}

/// @nodoc
class _$ScheduleManagerEventCopyWithImpl<$Res,
        $Val extends ScheduleManagerEvent>
    implements $ScheduleManagerEventCopyWith<$Res> {
  _$ScheduleManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl with DiagnosticableTreeMixin implements _Init {
  const _$InitImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ScheduleManagerEvent.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ScheduleManagerEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$SetIndexImplCopyWith<$Res> {
  factory _$$SetIndexImplCopyWith(
          _$SetIndexImpl value, $Res Function(_$SetIndexImpl) then) =
      __$$SetIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers});
}

/// @nodoc
class __$$SetIndexImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$SetIndexImpl>
    implements _$$SetIndexImplCopyWith<$Res> {
  __$$SetIndexImplCopyWithImpl(
      _$SetIndexImpl _value, $Res Function(_$SetIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyPrograms = null,
    Object? lecturers = null,
  }) {
    return _then(_$SetIndexImpl(
      null == studyPrograms
          ? _value._studyPrograms
          : studyPrograms // ignore: cast_nullable_to_non_nullable
              as List<StudyProgramBase>,
      null == lecturers
          ? _value._lecturers
          : lecturers // ignore: cast_nullable_to_non_nullable
              as List<LecturerBase>,
    ));
  }
}

/// @nodoc

class _$SetIndexImpl with DiagnosticableTreeMixin implements _SetIndex {
  const _$SetIndexImpl(final List<StudyProgramBase> studyPrograms,
      final List<LecturerBase> lecturers)
      : _studyPrograms = studyPrograms,
        _lecturers = lecturers;

  final List<StudyProgramBase> _studyPrograms;
  @override
  List<StudyProgramBase> get studyPrograms {
    if (_studyPrograms is EqualUnmodifiableListView) return _studyPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyPrograms);
  }

  final List<LecturerBase> _lecturers;
  @override
  List<LecturerBase> get lecturers {
    if (_lecturers is EqualUnmodifiableListView) return _lecturers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lecturers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.setIndex(studyPrograms: $studyPrograms, lecturers: $lecturers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleManagerEvent.setIndex'))
      ..add(DiagnosticsProperty('studyPrograms', studyPrograms))
      ..add(DiagnosticsProperty('lecturers', lecturers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndexImpl &&
            const DeepCollectionEquality()
                .equals(other._studyPrograms, _studyPrograms) &&
            const DeepCollectionEquality()
                .equals(other._lecturers, _lecturers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_studyPrograms),
      const DeepCollectionEquality().hash(_lecturers));

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      __$$SetIndexImplCopyWithImpl<_$SetIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return setIndex(studyPrograms, lecturers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return setIndex?.call(studyPrograms, lecturers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(studyPrograms, lecturers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class _SetIndex implements ScheduleManagerEvent {
  const factory _SetIndex(final List<StudyProgramBase> studyPrograms,
      final List<LecturerBase> lecturers) = _$SetIndexImpl;

  List<StudyProgramBase> get studyPrograms;
  List<LecturerBase> get lecturers;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateIndexImplCopyWith<$Res> {
  factory _$$UpdateIndexImplCopyWith(
          _$UpdateIndexImpl value, $Res Function(_$UpdateIndexImpl) then) =
      __$$UpdateIndexImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateIndexImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$UpdateIndexImpl>
    implements _$$UpdateIndexImplCopyWith<$Res> {
  __$$UpdateIndexImplCopyWithImpl(
      _$UpdateIndexImpl _value, $Res Function(_$UpdateIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateIndexImpl with DiagnosticableTreeMixin implements _UpdateIndex {
  const _$UpdateIndexImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.updateIndex()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ScheduleManagerEvent.updateIndex'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateIndexImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return updateIndex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return updateIndex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return updateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return updateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdateIndex implements ScheduleManagerEvent {
  const factory _UpdateIndex() = _$UpdateIndexImpl;
}

/// @nodoc
abstract class _$$CacheLecturerImplCopyWith<$Res> {
  factory _$$CacheLecturerImplCopyWith(
          _$CacheLecturerImpl value, $Res Function(_$CacheLecturerImpl) then) =
      __$$CacheLecturerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LecturerExt lecturer});
}

/// @nodoc
class __$$CacheLecturerImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$CacheLecturerImpl>
    implements _$$CacheLecturerImplCopyWith<$Res> {
  __$$CacheLecturerImplCopyWithImpl(
      _$CacheLecturerImpl _value, $Res Function(_$CacheLecturerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lecturer = freezed,
  }) {
    return _then(_$CacheLecturerImpl(
      freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as LecturerExt,
    ));
  }
}

/// @nodoc

class _$CacheLecturerImpl
    with DiagnosticableTreeMixin
    implements _CacheLecturer {
  const _$CacheLecturerImpl(this.lecturer);

  @override
  final LecturerExt lecturer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.cacheLecturer(lecturer: $lecturer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleManagerEvent.cacheLecturer'))
      ..add(DiagnosticsProperty('lecturer', lecturer));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheLecturerImpl &&
            const DeepCollectionEquality().equals(other.lecturer, lecturer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lecturer));

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheLecturerImplCopyWith<_$CacheLecturerImpl> get copyWith =>
      __$$CacheLecturerImplCopyWithImpl<_$CacheLecturerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return cacheLecturer(lecturer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return cacheLecturer?.call(lecturer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (cacheLecturer != null) {
      return cacheLecturer(lecturer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return cacheLecturer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return cacheLecturer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (cacheLecturer != null) {
      return cacheLecturer(this);
    }
    return orElse();
  }
}

abstract class _CacheLecturer implements ScheduleManagerEvent {
  const factory _CacheLecturer(final LecturerExt lecturer) =
      _$CacheLecturerImpl;

  LecturerExt get lecturer;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheLecturerImplCopyWith<_$CacheLecturerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLecturerImplCopyWith<$Res> {
  factory _$$UpdateLecturerImplCopyWith(_$UpdateLecturerImpl value,
          $Res Function(_$UpdateLecturerImpl) then) =
      __$$UpdateLecturerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UpdateLecturerImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$UpdateLecturerImpl>
    implements _$$UpdateLecturerImplCopyWith<$Res> {
  __$$UpdateLecturerImplCopyWithImpl(
      _$UpdateLecturerImpl _value, $Res Function(_$UpdateLecturerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdateLecturerImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateLecturerImpl
    with DiagnosticableTreeMixin
    implements _UpdateLecturer {
  const _$UpdateLecturerImpl(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.updateLecturer(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleManagerEvent.updateLecturer'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLecturerImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLecturerImplCopyWith<_$UpdateLecturerImpl> get copyWith =>
      __$$UpdateLecturerImplCopyWithImpl<_$UpdateLecturerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return updateLecturer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return updateLecturer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (updateLecturer != null) {
      return updateLecturer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return updateLecturer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return updateLecturer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (updateLecturer != null) {
      return updateLecturer(this);
    }
    return orElse();
  }
}

abstract class _UpdateLecturer implements ScheduleManagerEvent {
  const factory _UpdateLecturer(final String id) = _$UpdateLecturerImpl;

  String get id;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLecturerImplCopyWith<_$UpdateLecturerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheStudyProgramImplCopyWith<$Res> {
  factory _$$CacheStudyProgramImplCopyWith(_$CacheStudyProgramImpl value,
          $Res Function(_$CacheStudyProgramImpl) then) =
      __$$CacheStudyProgramImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StudyProgramExt studyProgram});
}

/// @nodoc
class __$$CacheStudyProgramImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$CacheStudyProgramImpl>
    implements _$$CacheStudyProgramImplCopyWith<$Res> {
  __$$CacheStudyProgramImplCopyWithImpl(_$CacheStudyProgramImpl _value,
      $Res Function(_$CacheStudyProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgram = freezed,
  }) {
    return _then(_$CacheStudyProgramImpl(
      freezed == studyProgram
          ? _value.studyProgram
          : studyProgram // ignore: cast_nullable_to_non_nullable
              as StudyProgramExt,
    ));
  }
}

/// @nodoc

class _$CacheStudyProgramImpl
    with DiagnosticableTreeMixin
    implements _CacheStudyProgram {
  const _$CacheStudyProgramImpl(this.studyProgram);

  @override
  final StudyProgramExt studyProgram;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.cacheStudyProgram(studyProgram: $studyProgram)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ScheduleManagerEvent.cacheStudyProgram'))
      ..add(DiagnosticsProperty('studyProgram', studyProgram));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheStudyProgramImpl &&
            const DeepCollectionEquality()
                .equals(other.studyProgram, studyProgram));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(studyProgram));

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheStudyProgramImplCopyWith<_$CacheStudyProgramImpl> get copyWith =>
      __$$CacheStudyProgramImplCopyWithImpl<_$CacheStudyProgramImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return cacheStudyProgram(studyProgram);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return cacheStudyProgram?.call(studyProgram);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (cacheStudyProgram != null) {
      return cacheStudyProgram(studyProgram);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return cacheStudyProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return cacheStudyProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (cacheStudyProgram != null) {
      return cacheStudyProgram(this);
    }
    return orElse();
  }
}

abstract class _CacheStudyProgram implements ScheduleManagerEvent {
  const factory _CacheStudyProgram(final StudyProgramExt studyProgram) =
      _$CacheStudyProgramImpl;

  StudyProgramExt get studyProgram;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheStudyProgramImplCopyWith<_$CacheStudyProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStudyProgramImplCopyWith<$Res> {
  factory _$$UpdateStudyProgramImplCopyWith(_$UpdateStudyProgramImpl value,
          $Res Function(_$UpdateStudyProgramImpl) then) =
      __$$UpdateStudyProgramImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UpdateStudyProgramImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$UpdateStudyProgramImpl>
    implements _$$UpdateStudyProgramImplCopyWith<$Res> {
  __$$UpdateStudyProgramImplCopyWithImpl(_$UpdateStudyProgramImpl _value,
      $Res Function(_$UpdateStudyProgramImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdateStudyProgramImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStudyProgramImpl
    with DiagnosticableTreeMixin
    implements _UpdateStudyProgram {
  const _$UpdateStudyProgramImpl(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.updateStudyProgram(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ScheduleManagerEvent.updateStudyProgram'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudyProgramImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudyProgramImplCopyWith<_$UpdateStudyProgramImpl> get copyWith =>
      __$$UpdateStudyProgramImplCopyWithImpl<_$UpdateStudyProgramImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return updateStudyProgram(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return updateStudyProgram?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (updateStudyProgram != null) {
      return updateStudyProgram(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return updateStudyProgram(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return updateStudyProgram?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (updateStudyProgram != null) {
      return updateStudyProgram(this);
    }
    return orElse();
  }
}

abstract class _UpdateStudyProgram implements ScheduleManagerEvent {
  const factory _UpdateStudyProgram(final String id) = _$UpdateStudyProgramImpl;

  String get id;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStudyProgramImplCopyWith<_$UpdateStudyProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveScheduleImplCopyWith<$Res> {
  factory _$$RemoveScheduleImplCopyWith(_$RemoveScheduleImpl value,
          $Res Function(_$RemoveScheduleImpl) then) =
      __$$RemoveScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({({String id, ScheduleType type}) schedule});
}

/// @nodoc
class __$$RemoveScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$RemoveScheduleImpl>
    implements _$$RemoveScheduleImplCopyWith<$Res> {
  __$$RemoveScheduleImplCopyWithImpl(
      _$RemoveScheduleImpl _value, $Res Function(_$RemoveScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$RemoveScheduleImpl(
      null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ({String id, ScheduleType type}),
    ));
  }
}

/// @nodoc

class _$RemoveScheduleImpl
    with DiagnosticableTreeMixin
    implements _RemoveSchedule {
  const _$RemoveScheduleImpl(this.schedule);

  @override
  final ({String id, ScheduleType type}) schedule;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.removeSchedule(schedule: $schedule)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleManagerEvent.removeSchedule'))
      ..add(DiagnosticsProperty('schedule', schedule));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveScheduleImpl &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schedule);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveScheduleImplCopyWith<_$RemoveScheduleImpl> get copyWith =>
      __$$RemoveScheduleImplCopyWithImpl<_$RemoveScheduleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return removeSchedule(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return removeSchedule?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (removeSchedule != null) {
      return removeSchedule(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return removeSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return removeSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (removeSchedule != null) {
      return removeSchedule(this);
    }
    return orElse();
  }
}

abstract class _RemoveSchedule implements ScheduleManagerEvent {
  const factory _RemoveSchedule(
      final ({String id, ScheduleType type}) schedule) = _$RemoveScheduleImpl;

  ({String id, ScheduleType type}) get schedule;

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveScheduleImplCopyWith<_$RemoveScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$ScheduleManagerEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl with DiagnosticableTreeMixin implements _Clear {
  const _$ClearImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerEvent.clear()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ScheduleManagerEvent.clear'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)
        setIndex,
    required TResult Function() updateIndex,
    required TResult Function(LecturerExt lecturer) cacheLecturer,
    required TResult Function(String id) updateLecturer,
    required TResult Function(StudyProgramExt studyProgram) cacheStudyProgram,
    required TResult Function(String id) updateStudyProgram,
    required TResult Function(({String id, ScheduleType type}) schedule)
        removeSchedule,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult? Function()? updateIndex,
    TResult? Function(LecturerExt lecturer)? cacheLecturer,
    TResult? Function(String id)? updateLecturer,
    TResult? Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult? Function(String id)? updateStudyProgram,
    TResult? Function(({String id, ScheduleType type}) schedule)?
        removeSchedule,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            List<StudyProgramBase> studyPrograms, List<LecturerBase> lecturers)?
        setIndex,
    TResult Function()? updateIndex,
    TResult Function(LecturerExt lecturer)? cacheLecturer,
    TResult Function(String id)? updateLecturer,
    TResult Function(StudyProgramExt studyProgram)? cacheStudyProgram,
    TResult Function(String id)? updateStudyProgram,
    TResult Function(({String id, ScheduleType type}) schedule)? removeSchedule,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_UpdateIndex value) updateIndex,
    required TResult Function(_CacheLecturer value) cacheLecturer,
    required TResult Function(_UpdateLecturer value) updateLecturer,
    required TResult Function(_CacheStudyProgram value) cacheStudyProgram,
    required TResult Function(_UpdateStudyProgram value) updateStudyProgram,
    required TResult Function(_RemoveSchedule value) removeSchedule,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_UpdateIndex value)? updateIndex,
    TResult? Function(_CacheLecturer value)? cacheLecturer,
    TResult? Function(_UpdateLecturer value)? updateLecturer,
    TResult? Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult? Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult? Function(_RemoveSchedule value)? removeSchedule,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_UpdateIndex value)? updateIndex,
    TResult Function(_CacheLecturer value)? cacheLecturer,
    TResult Function(_UpdateLecturer value)? updateLecturer,
    TResult Function(_CacheStudyProgram value)? cacheStudyProgram,
    TResult Function(_UpdateStudyProgram value)? updateStudyProgram,
    TResult Function(_RemoveSchedule value)? removeSchedule,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements ScheduleManagerEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$ScheduleManagerState {
  bool get refreshingIndex => throw _privateConstructorUsedError;
  Set<({String id, ScheduleType type})> get refreshing =>
      throw _privateConstructorUsedError;
  OptionsTreeNode<dynamic>? get studyProgramsOptionsTree =>
      throw _privateConstructorUsedError;
  OptionsTreeNode<dynamic>? get lecturersOptionsTree =>
      throw _privateConstructorUsedError;
  @HiveField(0, defaultValue: {})
  Map<String, StudyProgramExt> get cachedStudyPrograms =>
      throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: {})
  Map<String, LecturerExt> get cachedLecturers =>
      throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: {})
  Map<String, StudyProgramBase> get studyProgramsIndex =>
      throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: {})
  Map<String, LecturerBase> get lecturersIndex =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScheduleManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleManagerStateCopyWith<ScheduleManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleManagerStateCopyWith<$Res> {
  factory $ScheduleManagerStateCopyWith(ScheduleManagerState value,
          $Res Function(ScheduleManagerState) then) =
      _$ScheduleManagerStateCopyWithImpl<$Res, ScheduleManagerState>;
  @useResult
  $Res call(
      {bool refreshingIndex,
      Set<({String id, ScheduleType type})> refreshing,
      OptionsTreeNode<dynamic>? studyProgramsOptionsTree,
      OptionsTreeNode<dynamic>? lecturersOptionsTree,
      @HiveField(0, defaultValue: {})
      Map<String, StudyProgramExt> cachedStudyPrograms,
      @HiveField(1, defaultValue: {}) Map<String, LecturerExt> cachedLecturers,
      @HiveField(2, defaultValue: {})
      Map<String, StudyProgramBase> studyProgramsIndex,
      @HiveField(3, defaultValue: {})
      Map<String, LecturerBase> lecturersIndex});
}

/// @nodoc
class _$ScheduleManagerStateCopyWithImpl<$Res,
        $Val extends ScheduleManagerState>
    implements $ScheduleManagerStateCopyWith<$Res> {
  _$ScheduleManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshingIndex = null,
    Object? refreshing = null,
    Object? studyProgramsOptionsTree = freezed,
    Object? lecturersOptionsTree = freezed,
    Object? cachedStudyPrograms = null,
    Object? cachedLecturers = null,
    Object? studyProgramsIndex = null,
    Object? lecturersIndex = null,
  }) {
    return _then(_value.copyWith(
      refreshingIndex: null == refreshingIndex
          ? _value.refreshingIndex
          : refreshingIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshing: null == refreshing
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as Set<({String id, ScheduleType type})>,
      studyProgramsOptionsTree: freezed == studyProgramsOptionsTree
          ? _value.studyProgramsOptionsTree
          : studyProgramsOptionsTree // ignore: cast_nullable_to_non_nullable
              as OptionsTreeNode<dynamic>?,
      lecturersOptionsTree: freezed == lecturersOptionsTree
          ? _value.lecturersOptionsTree
          : lecturersOptionsTree // ignore: cast_nullable_to_non_nullable
              as OptionsTreeNode<dynamic>?,
      cachedStudyPrograms: null == cachedStudyPrograms
          ? _value.cachedStudyPrograms
          : cachedStudyPrograms // ignore: cast_nullable_to_non_nullable
              as Map<String, StudyProgramExt>,
      cachedLecturers: null == cachedLecturers
          ? _value.cachedLecturers
          : cachedLecturers // ignore: cast_nullable_to_non_nullable
              as Map<String, LecturerExt>,
      studyProgramsIndex: null == studyProgramsIndex
          ? _value.studyProgramsIndex
          : studyProgramsIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, StudyProgramBase>,
      lecturersIndex: null == lecturersIndex
          ? _value.lecturersIndex
          : lecturersIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, LecturerBase>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleManagerStateImplCopyWith<$Res>
    implements $ScheduleManagerStateCopyWith<$Res> {
  factory _$$ScheduleManagerStateImplCopyWith(_$ScheduleManagerStateImpl value,
          $Res Function(_$ScheduleManagerStateImpl) then) =
      __$$ScheduleManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool refreshingIndex,
      Set<({String id, ScheduleType type})> refreshing,
      OptionsTreeNode<dynamic>? studyProgramsOptionsTree,
      OptionsTreeNode<dynamic>? lecturersOptionsTree,
      @HiveField(0, defaultValue: {})
      Map<String, StudyProgramExt> cachedStudyPrograms,
      @HiveField(1, defaultValue: {}) Map<String, LecturerExt> cachedLecturers,
      @HiveField(2, defaultValue: {})
      Map<String, StudyProgramBase> studyProgramsIndex,
      @HiveField(3, defaultValue: {})
      Map<String, LecturerBase> lecturersIndex});
}

/// @nodoc
class __$$ScheduleManagerStateImplCopyWithImpl<$Res>
    extends _$ScheduleManagerStateCopyWithImpl<$Res, _$ScheduleManagerStateImpl>
    implements _$$ScheduleManagerStateImplCopyWith<$Res> {
  __$$ScheduleManagerStateImplCopyWithImpl(_$ScheduleManagerStateImpl _value,
      $Res Function(_$ScheduleManagerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshingIndex = null,
    Object? refreshing = null,
    Object? studyProgramsOptionsTree = freezed,
    Object? lecturersOptionsTree = freezed,
    Object? cachedStudyPrograms = null,
    Object? cachedLecturers = null,
    Object? studyProgramsIndex = null,
    Object? lecturersIndex = null,
  }) {
    return _then(_$ScheduleManagerStateImpl(
      refreshingIndex: null == refreshingIndex
          ? _value.refreshingIndex
          : refreshingIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshing: null == refreshing
          ? _value._refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as Set<({String id, ScheduleType type})>,
      studyProgramsOptionsTree: freezed == studyProgramsOptionsTree
          ? _value.studyProgramsOptionsTree
          : studyProgramsOptionsTree // ignore: cast_nullable_to_non_nullable
              as OptionsTreeNode<dynamic>?,
      lecturersOptionsTree: freezed == lecturersOptionsTree
          ? _value.lecturersOptionsTree
          : lecturersOptionsTree // ignore: cast_nullable_to_non_nullable
              as OptionsTreeNode<dynamic>?,
      cachedStudyPrograms: null == cachedStudyPrograms
          ? _value._cachedStudyPrograms
          : cachedStudyPrograms // ignore: cast_nullable_to_non_nullable
              as Map<String, StudyProgramExt>,
      cachedLecturers: null == cachedLecturers
          ? _value._cachedLecturers
          : cachedLecturers // ignore: cast_nullable_to_non_nullable
              as Map<String, LecturerExt>,
      studyProgramsIndex: null == studyProgramsIndex
          ? _value._studyProgramsIndex
          : studyProgramsIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, StudyProgramBase>,
      lecturersIndex: null == lecturersIndex
          ? _value._lecturersIndex
          : lecturersIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, LecturerBase>,
    ));
  }
}

/// @nodoc

@HiveType(typeId: HiveTypeIds.scheduleManagerState)
class _$ScheduleManagerStateImpl
    with DiagnosticableTreeMixin
    implements _ScheduleManagerState {
  _$ScheduleManagerStateImpl(
      {this.refreshingIndex = false,
      final Set<({String id, ScheduleType type})> refreshing = const {},
      this.studyProgramsOptionsTree,
      this.lecturersOptionsTree,
      @HiveField(0, defaultValue: {})
      final Map<String, StudyProgramExt> cachedStudyPrograms = const {},
      @HiveField(1, defaultValue: {})
      final Map<String, LecturerExt> cachedLecturers = const {},
      @HiveField(2, defaultValue: {})
      final Map<String, StudyProgramBase> studyProgramsIndex = const {},
      @HiveField(3, defaultValue: {})
      final Map<String, LecturerBase> lecturersIndex = const {}})
      : _refreshing = refreshing,
        _cachedStudyPrograms = cachedStudyPrograms,
        _cachedLecturers = cachedLecturers,
        _studyProgramsIndex = studyProgramsIndex,
        _lecturersIndex = lecturersIndex;

  @override
  @JsonKey()
  final bool refreshingIndex;
  final Set<({String id, ScheduleType type})> _refreshing;
  @override
  @JsonKey()
  Set<({String id, ScheduleType type})> get refreshing {
    if (_refreshing is EqualUnmodifiableSetView) return _refreshing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_refreshing);
  }

  @override
  final OptionsTreeNode<dynamic>? studyProgramsOptionsTree;
  @override
  final OptionsTreeNode<dynamic>? lecturersOptionsTree;
  final Map<String, StudyProgramExt> _cachedStudyPrograms;
  @override
  @JsonKey()
  @HiveField(0, defaultValue: {})
  Map<String, StudyProgramExt> get cachedStudyPrograms {
    if (_cachedStudyPrograms is EqualUnmodifiableMapView)
      return _cachedStudyPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cachedStudyPrograms);
  }

  final Map<String, LecturerExt> _cachedLecturers;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: {})
  Map<String, LecturerExt> get cachedLecturers {
    if (_cachedLecturers is EqualUnmodifiableMapView) return _cachedLecturers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cachedLecturers);
  }

  final Map<String, StudyProgramBase> _studyProgramsIndex;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: {})
  Map<String, StudyProgramBase> get studyProgramsIndex {
    if (_studyProgramsIndex is EqualUnmodifiableMapView)
      return _studyProgramsIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_studyProgramsIndex);
  }

  final Map<String, LecturerBase> _lecturersIndex;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: {})
  Map<String, LecturerBase> get lecturersIndex {
    if (_lecturersIndex is EqualUnmodifiableMapView) return _lecturersIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lecturersIndex);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleManagerState(refreshingIndex: $refreshingIndex, refreshing: $refreshing, studyProgramsOptionsTree: $studyProgramsOptionsTree, lecturersOptionsTree: $lecturersOptionsTree, cachedStudyPrograms: $cachedStudyPrograms, cachedLecturers: $cachedLecturers, studyProgramsIndex: $studyProgramsIndex, lecturersIndex: $lecturersIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleManagerState'))
      ..add(DiagnosticsProperty('refreshingIndex', refreshingIndex))
      ..add(DiagnosticsProperty('refreshing', refreshing))
      ..add(DiagnosticsProperty(
          'studyProgramsOptionsTree', studyProgramsOptionsTree))
      ..add(DiagnosticsProperty('lecturersOptionsTree', lecturersOptionsTree))
      ..add(DiagnosticsProperty('cachedStudyPrograms', cachedStudyPrograms))
      ..add(DiagnosticsProperty('cachedLecturers', cachedLecturers))
      ..add(DiagnosticsProperty('studyProgramsIndex', studyProgramsIndex))
      ..add(DiagnosticsProperty('lecturersIndex', lecturersIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleManagerStateImpl &&
            (identical(other.refreshingIndex, refreshingIndex) ||
                other.refreshingIndex == refreshingIndex) &&
            const DeepCollectionEquality()
                .equals(other._refreshing, _refreshing) &&
            (identical(
                    other.studyProgramsOptionsTree, studyProgramsOptionsTree) ||
                other.studyProgramsOptionsTree == studyProgramsOptionsTree) &&
            (identical(other.lecturersOptionsTree, lecturersOptionsTree) ||
                other.lecturersOptionsTree == lecturersOptionsTree) &&
            const DeepCollectionEquality()
                .equals(other._cachedStudyPrograms, _cachedStudyPrograms) &&
            const DeepCollectionEquality()
                .equals(other._cachedLecturers, _cachedLecturers) &&
            const DeepCollectionEquality()
                .equals(other._studyProgramsIndex, _studyProgramsIndex) &&
            const DeepCollectionEquality()
                .equals(other._lecturersIndex, _lecturersIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      refreshingIndex,
      const DeepCollectionEquality().hash(_refreshing),
      studyProgramsOptionsTree,
      lecturersOptionsTree,
      const DeepCollectionEquality().hash(_cachedStudyPrograms),
      const DeepCollectionEquality().hash(_cachedLecturers),
      const DeepCollectionEquality().hash(_studyProgramsIndex),
      const DeepCollectionEquality().hash(_lecturersIndex));

  /// Create a copy of ScheduleManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleManagerStateImplCopyWith<_$ScheduleManagerStateImpl>
      get copyWith =>
          __$$ScheduleManagerStateImplCopyWithImpl<_$ScheduleManagerStateImpl>(
              this, _$identity);
}

abstract class _ScheduleManagerState implements ScheduleManagerState {
  factory _ScheduleManagerState(
          {final bool refreshingIndex,
          final Set<({String id, ScheduleType type})> refreshing,
          final OptionsTreeNode<dynamic>? studyProgramsOptionsTree,
          final OptionsTreeNode<dynamic>? lecturersOptionsTree,
          @HiveField(0, defaultValue: {})
          final Map<String, StudyProgramExt> cachedStudyPrograms,
          @HiveField(1, defaultValue: {})
          final Map<String, LecturerExt> cachedLecturers,
          @HiveField(2, defaultValue: {})
          final Map<String, StudyProgramBase> studyProgramsIndex,
          @HiveField(3, defaultValue: {})
          final Map<String, LecturerBase> lecturersIndex}) =
      _$ScheduleManagerStateImpl;

  @override
  bool get refreshingIndex;
  @override
  Set<({String id, ScheduleType type})> get refreshing;
  @override
  OptionsTreeNode<dynamic>? get studyProgramsOptionsTree;
  @override
  OptionsTreeNode<dynamic>? get lecturersOptionsTree;
  @override
  @HiveField(0, defaultValue: {})
  Map<String, StudyProgramExt> get cachedStudyPrograms;
  @override
  @HiveField(1, defaultValue: {})
  Map<String, LecturerExt> get cachedLecturers;
  @override
  @HiveField(2, defaultValue: {})
  Map<String, StudyProgramBase> get studyProgramsIndex;
  @override
  @HiveField(3, defaultValue: {})
  Map<String, LecturerBase> get lecturersIndex;

  /// Create a copy of ScheduleManagerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleManagerStateImplCopyWith<_$ScheduleManagerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
