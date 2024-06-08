part of 'schedule_manager_bloc.dart';

@freezed
class ScheduleManagerState with _$ScheduleManagerState {
  @HiveType(
    typeId: HiveTypeIds.scheduleManagerState,
  )
  factory ScheduleManagerState({
    @Default(false) bool refreshingIndex,
    @Default({}) Set<ScheduleKey> refreshing,
    OptionsTreeNode? studyProgramsOptionsTree,
    OptionsTreeNode? lecturersOptionsTree,
    @HiveField(0, defaultValue: {})
    @Default({})
    Map<String, StudyProgramExt> cachedStudyPrograms,
    @HiveField(1, defaultValue: {})
    @Default({})
    Map<String, LecturerExt> cachedLecturers,
    @HiveField(2, defaultValue: {})
    @Default({})
    Map<String, StudyProgramBase> studyProgramsIndex,
    @HiveField(3, defaultValue: {})
    @Default({})
    Map<String, LecturerBase> lecturersIndex,
  }) = _ScheduleManagerState;

  static bool didChange(
    ScheduleManagerState prev,
    ScheduleManagerState next,
    ScheduleKey key,
  ) {
    return switch (key.type) {
      ScheduleType.lecturer =>
        prev.lecturersIndex[key.id] != next.lecturersIndex[key.id] ||
            prev.cachedLecturers[key.id] != next.cachedLecturers[key.id],
      ScheduleType.studyProgram => prev.studyProgramsIndex[key.id] !=
              next.studyProgramsIndex[key.id] ||
          prev.cachedStudyPrograms[key.id] != next.cachedStudyPrograms[key.id],
    };
  }
}

// @freezed
// class ScheduleManagerHiveState with _$ScheduleManagerHiveState {
//   @HiveType(
//     typeId: HiveTypeIds.scheduleManagerState,
//     adapterName: "ScheduleManagerHiveStateAdapter",
//   )
//   factory ScheduleManagerHiveState({
//     @HiveField(0, defaultValue: [])
//     @Default([])
//     List<StudyProgramBase> availableStudyPrograms,
//     @HiveField(1, defaultValue: [])
//     @Default([])
//     List<LecturerBase> availableLecturers,
//     @HiveField(2, defaultValue: {})
//     @Default({})
//     Map<ScheduleKey, StudyProgramExt> cachedStudyPrograms,
//     @HiveField(3, defaultValue: {})
//     @Default({})
//     Map<ScheduleKey, LecturerExt> cachedLecturers,
//   }) = _ScheduleManagerHiveState;
//   ScheduleManagerHiveState._();

//   ScheduleManagerState asNormalState() {
//     return ScheduleManagerState(
//       schedules: schedules,
//       schedulesIndex: schedulesIndex,
//       lecturersOptionsTree: createLecturerOptionsTree(
//         schedulesIndex.values.whereType<LecturerBase>(),
//       ),
//       schedulesOptionsTree: createStudyProgramOptionsTree(
//         schedulesIndex.values.whereType<ScheduleBase>(),
//       ),
//     );
//   }
// }
