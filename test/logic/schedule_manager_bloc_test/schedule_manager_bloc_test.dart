import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/data/fakes/sggw_hub_repo_fake.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

void main() async {
  GetIt.instance.registerSingleton<SggwHubRepo>(FakeSggwHubRepo());
  registerLogicDataAdapters();
  registerDataAdapters();

  await Hive.openBox(
    hiveBoxName,
    path: testingLocation,
  );

  final Box box = Hive.box(hiveBoxName);
  box.clear();

  final testHiveState = ScheduleManagerHiveState(
    schedules: {
      (id: mockSchedule["id"]! as String, type: ScheduleType.schedule):
          Schedule.fromJson(mockSchedule),
      (id: mockLecturer["id"]! as String, type: ScheduleType.lecturer):
          Lecturer.fromJson(mockLecturer),
    },
  );

  blocTest<ScheduleManagerBloc, ScheduleManagerState>(
    'Can read saved state.',
    build: () => ScheduleManagerBloc(),
    setUp: () => box.put(
      ScheduleManagerBloc.boxKey,
      testHiveState,
    ),
    act: (bloc) => bloc.add(const ScheduleManagerEvent.init()),
    expect: () => [testHiveState.asNormalState()],
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleManagerBloc, ScheduleManagerState>(
    'emits 2 states for updating Schedule.',
    build: () => ScheduleManagerBloc(),
    act: (bloc) => bloc.add(const ScheduleManagerEvent.updateSchedule("any")),
    expect: () => [
      // puts into loading
      ScheduleManagerState(
        schedules: {},
        refreshing: {(id: "any", type: ScheduleType.schedule)},
      ),
      // then unmarks as loading and is in the cache
      predicate<ScheduleManagerState>(
        (state) =>
            state.schedules.containsKey(
              (id: "any", type: ScheduleType.schedule),
            ) &&
            state.refreshing.isEmpty,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleManagerBloc, ScheduleManagerState>(
    'emits 2 states for updating Lecturer.',
    build: () => ScheduleManagerBloc(),
    act: (bloc) => bloc.add(const ScheduleManagerEvent.updateLecturer("any")),
    expect: () => [
      // puts into loading
      ScheduleManagerState(
        schedules: {},
        refreshing: {(id: "any", type: ScheduleType.lecturer)},
      ),
      // then unmarks as loading and is in the cache
      predicate<ScheduleManagerState>(
        (state) =>
            state.schedules.containsKey(
              (id: "any", type: ScheduleType.lecturer),
            ) &&
            state.refreshing.isEmpty,
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleManagerBloc, ScheduleManagerState>(
    'emits 2 states for updating schedule index',
    build: () => ScheduleManagerBloc(),
    act: (bloc) => bloc.add(const ScheduleManagerEvent.updateIndex()),
    expect: () => [
      // puts into loading
      ScheduleManagerState(
        refreshingIndex: true,
      ),
      // then unmarks as loading and is in the cache
      predicate<ScheduleManagerState>(
        (state) => state.schedulesIndex.isNotEmpty && !state.refreshingIndex,
      ),
    ],
    tearDown: () => box.clear(),
  );
}
