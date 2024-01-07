import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/logic/register_adapters.dart';

void main() async {
  registerLogicDataAdapters();
  registerDataAdapters();

  await Hive.openBox(
    hiveBoxName,
    path: testingLocation,
  );

  final Box box = Hive.box(hiveBoxName);
  box.clear();
  const ScheduleKey testSchedule =
      (ScheduleBase, "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71");
  const ScheduleKey testLecturer =
      (LecturerBase, "abf9b897-9cbb-456d-0548-08dbeeaa6ca9");

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'add schedule to FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.addSchedule(testSchedule),
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
      bloc.addSchedule(testSchedule);
      bloc.addSchedule(testSchedule);
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
      bloc.addSchedule(testSchedule);
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

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'overwrite FavedSchedulestate with one schedule',
    build: () => FavedSchedulesCubit(),
    act: (bloc) => bloc.overwriteFavedSchedules([testSchedule]),
    expect: () => [
      FavedSchedulesState(
        favedSchedules: [testSchedule],
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<FavedSchedulesCubit, FavedSchedulesState>(
    'clear FavedSchedulestate',
    build: () => FavedSchedulesCubit(),
    act: (bloc) async {
      bloc.addSchedule(testSchedule);
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
