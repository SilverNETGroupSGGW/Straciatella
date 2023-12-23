import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/logic/saved_schedules/saved_schedules_cubit.dart';

void main() async {
  await Hive.openBox<SavedSchedulesState>(
    hiveBoxName,
    path: "test/logic/saved_schedules",
  );
  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'emits empty SavedScheduleState when loaded saved schedules.',
    build: () => SavedSchedulesCubit(),
    act: (bloc) => bloc.loadSavedSchedules(),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [],
        selectedSchedule: null,
      ),
    ],
  );
}
