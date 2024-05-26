part of 'schedule_manager_bloc.dart';

@freezed
class ScheduleManagerState with _$ScheduleManagerState {
  @HiveType(
    typeId: HiveTypeIds.scheduleManagerState,
  )
  factory ScheduleManagerState({
    @Default(false) bool refreshingIndex,
    @Default({}) Set<ScheduleKey> refreshing,
    @Default([]) List<StudyProgramBase> availableStudyPrograms,
    @Default([]) List<LecturerBase> availableLecturers,
    @HiveField(0, defaultValue: {})
    @Default({})
    Map<String, StudyProgramExt> cachedStudyPrograms,
    @HiveField(1, defaultValue: {})
    @Default({})
    Map<String, LecturerExt> cachedLecturers,
  }) = _ScheduleManagerState;
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
