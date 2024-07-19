import 'package:bloc_test/bloc_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/schedule_filters/schedule_filters_cubit.dart';

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

  blocTest<ScheduleFiltersCubit, ScheduleFiltersState>(
    'load filters from disk',
    build: () => ScheduleFiltersCubit(
      scheduleKey: (id: "0", type: ScheduleType.lecturer),
    ),
    setUp: () => box.put("scheduleFilters/${ScheduleType.lecturer.name}_0", {
      "visibleGroups": [
        {
          "studySemesterId": "0",
          "groupId": "0",
        }
      ],
    }),
    act: (bloc) => bloc.load(),
    expect: () => [
      const ScheduleFiltersState(
        visibleGroups: [
          (
            studySemesterId: "0",
            groupId: "0",
          ),
        ],
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleFiltersCubit, ScheduleFiltersState>(
    'select group',
    build: () => ScheduleFiltersCubit(
      scheduleKey: (id: "0", type: ScheduleType.lecturer),
    ),
    act: (bloc) => bloc.selectGroup("sem0", "gr0"),
    expect: () => [
      const ScheduleFiltersState(
        visibleGroups: [
          (
            studySemesterId: "sem0",
            groupId: "gr0",
          ),
        ],
      ),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleFiltersCubit, ScheduleFiltersState>(
    'Selected group should be saved',
    build: () => ScheduleFiltersCubit(
      scheduleKey: (id: "0", type: ScheduleType.lecturer),
    ),
    act: (bloc) => bloc.selectGroup("sem0", "gr0"),
    verify: (bloc) =>
        bloc.box.get("scheduleFilters/${ScheduleType.lecturer.name}_0"),
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleFiltersCubit, ScheduleFiltersState>(
    'Selected group should deselect group in the same semester',
    build: () => ScheduleFiltersCubit(
      scheduleKey: (id: "0", type: ScheduleType.lecturer),
    ),
    act: (bloc) => bloc
      ..selectGroup("sem0", "gr0")
      ..selectGroup("sem1", "gr0")
      ..selectGroup("sem0", "gr1"),
    skip: 2,
    expect: () => [
      const ScheduleFiltersState(
        visibleGroups: [
          (
            studySemesterId: "sem1",
            groupId: "gr0",
          ),
          (
            studySemesterId: "sem0",
            groupId: "gr1",
          ),
        ],
      ),
    ],
    tearDown: () => box.clear(),
  );
}
