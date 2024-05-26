import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

part 'faved_schedules_state.dart';
part 'faved_schedules_cubit.freezed.dart';
part 'faved_schedules_cubit.g.dart';

class FavedSchedulesCubit extends Cubit<FavedSchedulesState> {
  static const boxKey = "favedSchedules";
  final Box box = Hive.box(hiveBoxName);

  // invokes events on this if:
  // user added a schedule to favs
  // user removed a schedule from favs
  ScheduleManagerBloc? scheduleManagerBloc;

  FavedSchedulesCubit([this.scheduleManagerBloc])
      : super(FavedSchedulesState());
  // For Copilot: Create new lists instead of mutating them

  @override
  void onChange(Change<FavedSchedulesState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(boxKey, change.nextState);
  }

  void invokeUpdateOnScheduleManager(ScheduleKey key) {
    if (key.type is Lecturer) {
      scheduleManagerBloc?.add(ScheduleManagerEvent.updateLecturer(key.id));
    }
    if (key.type is StudyProgram) {
      scheduleManagerBloc?.add(ScheduleManagerEvent.updateStudyProgram(key.id));
    }
  }

  void loadFavedSchedules() {
    try {
      final FavedSchedulesState? loadedState =
          box.get(boxKey) as FavedSchedulesState?;
      if (loadedState != null) emit(loadedState);
    } catch (e) {
      if (kDebugMode) {
        throw Exception("Error loading faved schedules from Hive: $e");
      }
      // TODO: handle exception
      return;
    }
  }

  void addStudyProgram(ScheduleKey schedule) {
    if (state.favedSchedules.contains(schedule)) return;

    invokeUpdateOnScheduleManager(schedule);
    emit(
      state.copyWith(
        favedSchedules: [...state.favedSchedules, schedule],
      ),
    );
  }

  void removeSchedule(ScheduleKey schedule) {
    final List<ScheduleKey> newFavedSchedules = [...state.favedSchedules];
    newFavedSchedules.remove(schedule);
    if (state.selectedSchedule == schedule) {
      emit(
        state.copyWith(
          favedSchedules: newFavedSchedules,
          selectedSchedule: null,
        ),
      );
    } else {
      emit(
        state.copyWith(
          favedSchedules: newFavedSchedules,
        ),
      );
    }
    scheduleManagerBloc?.add(ScheduleManagerEvent.removeSchedule(schedule));
  }

  void clearSchedules() {
    emit(
      state.copyWith(
        favedSchedules: [],
        selectedSchedule: null,
      ),
    );
    scheduleManagerBloc?.add(const ScheduleManagerEvent.clear());
  }

  // void overwriteFavedSchedules(List<ScheduleKey> schedules) {
  //   if (schedules.contains(state.selectedSchedule)) {
  //     emit(
  //       state.copyWith(
  //         favedSchedules: schedules,
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(
  //         favedSchedules: schedules,
  //         selectedSchedule: null,
  //       ),
  //     );
  //   }
  // }

  void selectSchedule(ScheduleKey schedule) {
    invokeUpdateOnScheduleManager(schedule);
    if (state.favedSchedules.contains(schedule)) {
      emit(
        state.copyWith(
          selectedSchedule: schedule,
        ),
      );
    } else {
      emit(
        state.copyWith(
          selectedSchedule: schedule,
          favedSchedules: [...state.favedSchedules, schedule],
        ),
      );
    }
  }

  void unselectSchedule() {
    emit(
      state.copyWith(
        selectedSchedule: null,
      ),
    );
  }
}
