import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

part 'faved_schedules_state.dart';
part 'faved_schedules_cubit.freezed.dart';
part 'faved_schedules_cubit.g.dart';

class FavedSchedulesCubit extends Cubit<FavedSchedulesState> {
  static const _boxKey = "favedSchedules";
  final Box box = Hive.box(hiveBoxName);

  FavedSchedulesCubit() : super(FavedSchedulesState());
  // For Copilot: Create new lists instead of mutating them

  @override
  void onChange(Change<FavedSchedulesState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(_boxKey, change.nextState);
  }

  loadFavedSchedules() {
    try {
      FavedSchedulesState? loadedState = box.get(_boxKey);
      if (loadedState != null) emit(loadedState);
    } catch (e) {
      print("Could not load saved schedules");
      // TODO: handle exception
    }
  }

  addSchedule(ScheduleBase schedule) {
    if (state.favedSchedules.contains(schedule)) return;
    emit(
      state.copyWith(
        favedSchedules: [...state.favedSchedules, schedule],
      ),
    );
  }

  removeSchedule(ScheduleBase schedule) {
    List<ScheduleBase> newFavedSchedules = [...state.favedSchedules];
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

  overwriteFavedSchedules(List<ScheduleBase> schedules) {
    if (schedules.contains(state.selectedSchedule))
      emit(state.copyWith(
        favedSchedules: schedules,
      ));
    else
      emit(state.copyWith(
        favedSchedules: schedules,
        selectedSchedule: null,
      ));
  }

  selectSchedule(ScheduleBase schedule) {
    if (state.favedSchedules.contains(schedule))
      emit(state.copyWith(
        selectedSchedule: schedule,
      ));
    else
      emit(state.copyWith(
        selectedSchedule: schedule,
        favedSchedules: [...state.favedSchedules, schedule],
      ));
  }

  unselectSchedule() {
    emit(state.copyWith(
      selectedSchedule: null,
    ));
  }
}
