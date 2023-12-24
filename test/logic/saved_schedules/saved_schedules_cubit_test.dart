import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/adapters/register_adapters.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/logic/saved_schedules/saved_schedules_cubit.dart';

void main() async {
  registerSavedSchedulesAdapters();
  registerDataAdapters();

  await Hive.openBox(
    hiveBoxName,
    path: testingLocation,
  );
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
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'checks if there can be double schedule',
    build: () => SavedSchedulesCubit(),
    setUp: () {
      SavedSchedulesCubit().addSchedule(testSchedule);
      SavedSchedulesCubit().addSchedule(testSchedule);
    },
    act: (bloc) => bloc.selectSchedule(testSchedule),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
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
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'remove schedule from SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    setUp: () => SavedSchedulesCubit().addSchedule(testSchedule),
    act: (bloc) => bloc.removeSchedule(testSchedule),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [],
        selectedSchedule: null,
      ),
    ],
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'overwrite SavedScheduleState with one schedule',
    build: () => SavedSchedulesCubit(),
    setUp: () => SavedSchedulesCubit().addSchedule(testSchedule),
    act: (bloc) => bloc.overwriteSavedSchedules([testSchedule]),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: null,
      ),
    ],
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'clear SavedScheduleState',
    build: () => SavedSchedulesCubit(),
    setUp: () => SavedSchedulesCubit().addSchedule(testSchedule),
    act: (bloc) => bloc.clearSavedSchedules(),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [],
        selectedSchedule: null,
      ),
    ],
  );

  blocTest<SavedSchedulesCubit, SavedSchedulesState>(
    'loads SavedScheduleState from hive',
    build: () => SavedSchedulesCubit(),
    setUp: () {
      SavedSchedulesCubit().addSchedule(testSchedule);
      SavedSchedulesCubit().selectSchedule(testSchedule);
    },
    act: (bloc) => bloc.loadSavedSchedules(),
    expect: () => [
      SavedSchedulesState(
        savedSchedules: [testSchedule],
        selectedSchedule: testSchedule,
      ),
    ],
  );
}
