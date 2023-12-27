import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/saved_schedules/saved_schedules_cubit.dart';

void main() async {
  registerLogicDataAdapters();
  registerDataAdapters();

  await Hive.openBox(
    hiveBoxName,
    path: testingLocation,
  );

  Box box = Hive.box(hiveBoxName);
  box.clear();
  Schedule testSchedule = Schedule.fromJson(
    {
      "id": "ba0d9a27-3078-4709-81e6-2d8b4e1c8a71",
      "created": "2023-11-27T00:00:06.6281617",
      "updated": "2023-11-27T00:00:06.6281618",
      "startDate": "0001-01-01T00:00:00+00:00",
      "name": "Informatyka R2S3 NONSTACIONARY MASTER",
      "year": 0,
      "semester": 0,
      "faculty": "DAS",
      "fieldOfStudy": "ASD",
      "studyMode": "Unknown",
      "degreeOfStudy": "AssociateDegree",
      "subjects": [],
    },
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'add schedule to SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    act: (bloc) => bloc.addSchedule(testSchedule),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'checks if there can be double schedule',
    build: () => SavedSchedulesCubit(),
    act: (bloc) {
      bloc.addSchedule(testSchedule);
      bloc.addSchedule(testSchedule);
    },
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'select schedule from SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    act: (bloc) => bloc.selectSchedule(testSchedule),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: testSchedule,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'remove schedule from SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    act: (bloc) {
      bloc.addSchedule(testSchedule);
      bloc.removeSchedule(testSchedule);
    },
    skip: 1,
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'overwrite SavedScheduleState with one schedule',
    build: () => SavedSchedulesCubit(),
    act: (bloc) => bloc.overwriteSavedSchedules([testSchedule]),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'clear SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    act: (bloc) async {
      bloc.addSchedule(testSchedule);
      bloc.clearSchedules();
    },
    skip: 1,
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [],
        selectedSchedule: null,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'loads SavedScheduleState from hive',
    build: () => SavedSchedulesCubit(),
    act: (bloc) {
      bloc.addSchedule(testSchedule);
      bloc.selectSchedule(testSchedule);
      bloc.loadSavedSchedules();
    },
    skip: 1,
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: testSchedule,
      ),
    ],
    tearDown: () => box.clear(),
  );
}
