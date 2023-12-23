import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';

part 'schedules_state.dart';
part 'schedules_cubit.freezed.dart';

class SchedulesCubit extends Cubit<SchedulesState> {
  static String _boxKey = "schedules";

  SchedulesCubit() : super(SchedulesState.initial()) {}

  void overrideSchedules(List<Schedule> schedules) {
    emit(SchedulesState.done(schedules, isOffline: true));
  }

  void addSchedule(Schedule schedule) {
    print(state);
    emit(state);
  }

  Future<void> loadFromStorage() async {
    emit(SchedulesState.loading());
    await Hive.openBox(_boxKey);
    final box = Hive.box(_boxKey);
    bool isApiAccessible = true;
    try {
      final loadedSchedules = box.get(_boxKey);
      if (loadedSchedules != null) {
        if (!isApiAccessible) {
          emit(SchedulesState.done(loadedSchedules, isOffline: true));
        } else {
          emit(SchedulesState.updating(loadedSchedules));
          getFromApi();
        }
      }
    } catch (e) {
      print("Could not load schedules");
    }
  }

  Future<void> getFromApi() async {
    emit(
      SchedulesState.updating(
        state.maybeMap(
          orElse: () => [],
          updating: (s) => s.schedules,
          done: (s) => s.schedules,
        ),
      ),
    );

    // TODO: Get schedules from API

    emit(
      SchedulesState.done(
        isOffline: false,
        state.maybeMap(
          orElse: () => [],
          updating: (s) => s.schedules,
          done: (s) => s.schedules,
        ),
      ),
    );
  }

  @override
  void onChange(Change<SchedulesState> change) {
    Hive.box(_boxKey).put(_boxKey, change.nextState);
    super.onChange(change);
  }

  @override
  Future<void> close() {
    Hive.box(_boxKey).close();
    return super.close();
  }
}
