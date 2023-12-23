import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/logic/saved_schedules/saved_schedules_cubit.dart';

void main() async {
  await Hive.openBox<SavedSchedulesState>(
    hiveBoxName,
    path: testingLocation,
  );
  registerSavedSchedulesAdapters();
  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'emits empty SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    act: (bloc) => bloc.clearSavedSchedules(),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [],
        selectedSchedule: null,
      ),
    ],
  );
}
