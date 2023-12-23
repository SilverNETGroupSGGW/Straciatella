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
  final Box<SavedSchedulesState> box = Hive.box(hiveBoxName);

  SavedSchedulesCubit() : super(SavedSchedulesState());

  @override
  void onChange(Change<SavedSchedulesState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(_boxKey, change.nextState);
  }

  loadSavedSchedules() {
    try {
      SavedSchedulesState loadedState = box.get(_boxKey) ?? state;
      emit(loadedState);
    } catch (e) {
      print("Could not load saved schedules");
      // TODO: handle exception
      emit(
        SavedSchedulesState(
          savedSchedules: [],
          selectedSchedule: null,
        ),
      );
    }
  }

  addSchedule(Schedule schedule) {
    emit(
      state.copyWith(
        savedSchedules: state.savedSchedules..add(schedule),
      ),
    );
  }

  removeSchedule(Schedule schedule) {
    final newSavedSchedules = state.savedSchedules;
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

  overwriteSavedSchedules(List<Schedule> savedSchedules) {
    if (savedSchedules.contains(state.selectedSchedule))
      emit(state.copyWith(
        savedSchedules: savedSchedules,
      ));
    else
      emit(state.copyWith(
        savedSchedules: savedSchedules,
        selectedSchedule: null,
      ));
  }

  selectSchedule(Schedule schedule) {
    emit(state.copyWith(
      selectedSchedule: schedule,
    ));
  }

  unselectSchedule() {
    emit(state.copyWith(
      selectedSchedule: null,
    ));
  }
}
w