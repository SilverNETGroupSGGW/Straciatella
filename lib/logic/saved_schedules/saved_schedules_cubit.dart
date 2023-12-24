import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';

part 'saved_schedules_state.dart';
part 'saved_schedules_cubit.freezed.dart';
part 'saved_schedules_cubit.g.dart';

class SavedSchedulesCubit extends Cubit<SavedSchedulesState> {
  static const _boxKey = "savedSchedules";
  final Box box = Hive.box(hiveBoxName);

  SavedSchedulesCubit() : super(SavedSchedulesState());
  // For Copilot: Create new lists instead of mutating them

  @override
  void onChange(Change<SavedSchedulesState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(_boxKey, change.nextState);
  }

  loadSavedSchedules() {
    try {
      SavedSchedulesState? loadedState = box.get(_boxKey);
      if (loadedState != null) emit(loadedState);
    } catch (e) {
      print("Could not load saved schedules");
      // TODO: handle exception
    }
  }

  addSchedule(Schedule schedule) {
    print(state.savedSchedules);
    // TODO: savedSchedules are not updated in the state
    if (this.state.savedSchedules.contains(schedule)) return;
    emit(
      state.copyWith(
        savedSchedules: [...state.savedSchedules, schedule],
      ),
    );
  }

  removeSchedule(Schedule schedule) {
    List<Schedule> newSavedSchedules = [...state.savedSchedules];
    newSavedSchedules.remove(schedule);
    if (state.selectedSchedule == schedule) {
      emit(state.copyWith(
        savedSchedules: newSavedSchedules,
        selectedSchedule: null,
      ));
    } else {
      emit(state.copyWith(
        savedSchedules: newSavedSchedules,
      ));
    }
  }

  clearSavedSchedules() {
    emit(state.copyWith(
      savedSchedules: [],
      selectedSchedule: null,
    ));
  }

  overwriteSavedSchedules(List<Schedule> schedules) {
    if (schedules.contains(state.selectedSchedule))
      emit(state.copyWith(
        savedSchedules: schedules,
      ));
    else
      emit(state.copyWith(
        savedSchedules: schedules,
        selectedSchedule: null,
      ));
  }

  selectSchedule(Schedule schedule) {
    if (state.savedSchedules.contains(schedule))
      emit(state.copyWith(
        selectedSchedule: schedule,
      ));
    else
      emit(state.copyWith(
        selectedSchedule: schedule,
        savedSchedules: [...state.savedSchedules, schedule],
      ));
  }

  unselectSchedule() {
    emit(state.copyWith(
      selectedSchedule: null,
    ));
  }
}
