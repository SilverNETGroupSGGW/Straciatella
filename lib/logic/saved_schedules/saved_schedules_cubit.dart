import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';

part 'saved_schedules_state.dart';
part 'saved_schedules_cubit.freezed.dart';
part 'saved_schedules_cubit.g.dart';

class SavedSchedulesCubit extends Cubit<SavedSchedulesState> {
  static const _boxKey = "savedSchedules";
  final Box box = Hive.box(_boxKey);

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
      final loadedSchedules = box.get(_boxKey);
      if (loadedSchedules != null) {
        emit(loadedSchedules);
      }
    } catch (e) {
      print("Could not load saved schedules");
    }
  }

  addSchedule(Schedule schedule) {
    emit(state.copyWith(
      savedSchedules: state.savedSchedules..add(schedule),
    ));
  }

  removeSchedule(Schedule schedule) {
    final newSavedSchedules = state.savedSchedules
        .where((element) => element != schedule.name)
        .toSet();
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

    emit(state.copyWith(
      savedSchedules: newSavedSchedules,
    ));
  }

  clearSavedSchedules() {
    emit(state.copyWith(
      savedSchedules: {},
    ));
  }

  overwriteSavedSchedules(Set<Schedule> savedSchedules) {
    emit(state.copyWith(
      savedSchedules: savedSchedules,
    ));
  }
}
