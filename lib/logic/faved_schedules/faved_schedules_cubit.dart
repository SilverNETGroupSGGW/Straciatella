import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/data/models/favable_schedule.dart';

part 'faved_schedules_state.dart';
part 'faved_schedules_cubit.freezed.dart';
part 'faved_schedules_cubit.g.dart';

class FavedSchedulesCubit extends Cubit<FavedSchedulesState> {
  static const boxKey = "favedSchedules";
  final Box box = Hive.box(hiveBoxName);

  FavedSchedulesCubit() : super(FavedSchedulesState());
  // For Copilot: Create new lists instead of mutating them

  @override
  void onChange(Change<FavedSchedulesState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(boxKey, change.nextState);
  }

  loadFavedSchedules() {
    try {
      FavedSchedulesState? loadedState = box.get(boxKey);
      if (loadedState != null) emit(loadedState);
    } catch (e) {
      if (kDebugMode) {
        print("Could not load faved schedules");
      }
      // TODO: handle exception
    }
  }

  addSchedule(FavableSchedule schedule) {
    if (state.favedSchedules.contains(schedule)) return;
    emit(
      state.copyWith(
        favedSchedules: [...state.favedSchedules, schedule],
      ),
    );
  }

  removeSchedule(FavableSchedule schedule) {
    List<FavableSchedule> newFavedSchedules = [...state.favedSchedules];
    newFavedSchedules.remove(schedule);
    if (state.selectedSchedule == schedule) {
      emit(state.copyWith(
        favedSchedules: newFavedSchedules,
        selectedSchedule: null,
      ));
    } else {
      emit(state.copyWith(
        favedSchedules: newFavedSchedules,
      ));
    }
  }

  clearSchedules() {
    emit(state.copyWith(
      favedSchedules: [],
      selectedSchedule: null,
    ));
  }

  overwriteFavedSchedules(List<FavableSchedule> schedules) {
    if (schedules.contains(state.selectedSchedule)) {
      emit(state.copyWith(
        favedSchedules: schedules,
      ));
    } else {
      emit(state.copyWith(
        favedSchedules: schedules,
        selectedSchedule: null,
      ));
    }
  }

  selectSchedule(FavableSchedule schedule) {
    if (state.favedSchedules.contains(schedule)) {
      emit(state.copyWith(
        selectedSchedule: schedule,
      ));
    } else {
      emit(state.copyWith(
        selectedSchedule: schedule,
        favedSchedules: [...state.favedSchedules, schedule],
      ));
    }
  }

  unselectSchedule() {
    emit(state.copyWith(
      selectedSchedule: null,
    ));
  }
}
