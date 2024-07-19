import 'package:bloc_test/bloc_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/logic/register_adapters.dart';

void main() async {
  registerLogicDataAdapters();
  registerDataAdapters();
  GetIt.instance.registerSingleton<Box>(
    await Hive.openBox(
      hiveBoxName,
      path: testingLocation,
    ),
  );
  final box = GetIt.instance.get<Box>();

  box.clear();
  const ScheduleKey testSchedule = (
    type: ScheduleType.studyProgram,
    id: "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71"
  );
  const ScheduleKey testLecturer =
      (type: ScheduleType.lecturer, id: "abf9b897-9cbb-456d-0548-08dbeeaa6ca9");

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'add schedule to FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.addStudyProgram(testSchedule),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'checks if there can be double schedule',
    build: () => FavedSchedulesCubit(),
    act: (bloc) {
      bloc.addStudyProgram(testSchedule);
      bloc.addStudyProgram(testSchedule);
    },
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'select schedule from FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.selectSchedule(testSchedule),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
        selectedSchedule: testSchedule,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'remove schedule from FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) {
      bloc.addStudyProgram(testSchedule);
      bloc.removeSchedule(testSchedule);
    },
    skip: 1,
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [],
      ),
    ],
    tearDown: () => box.clear(),
  );

  // blocTest<FavedSchedulesCubit, FavedSchedulesState>(
  //   'overwrite FavedSchedulestate with one schedule',
  //   build: () => FavedSchedulesCubit(),
  //   act: (bloc) => bloc.overwriteFavedSchedules([testSchedule]),
  //   expect: () => [
  //     FavedSchedulesState(
  //       favedSchedules: [testSchedule],
  //     ),
  //   ],
  //   tearDown: () => box.clear(),
  // );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'clear FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) async {
      bloc.addStudyProgram(testSchedule);
      bloc.clearSchedules();
    },
    skip: 1,
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [],
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'loads FavedSchedulestate from hive',
    build: () => FavedSchedulesCubit(),
    setUp: () => box.put(
      FavedSchedulesCubit.boxKey,
      FavedSchedulesState(
        favedSchedules: [testSchedule, testLecturer],
        selectedSchedule: testSchedule,
      ),
    ),
    act: (bloc) => bloc.loadFavedSchedules(),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule, testLecturer],
        selectedSchedule: testSchedule,
      ),
    ],
    tearDown: () => box.clear(),
  );
}
