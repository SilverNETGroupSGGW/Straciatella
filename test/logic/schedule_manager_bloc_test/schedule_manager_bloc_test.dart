import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/register_adapters.dart';
import 'package:silvertimetable/logic/register_adapters.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

void main() async {
  registerLogicDataAdapters();
  registerDataAdapters();

  await Hive.openBox(
    hiveBoxName,
    path: testingLocation,
  );

  final Box box = Hive.box(hiveBoxName);
  box.clear();

  blocTest<ScheduleManagerBloc, ScheduleManagerState>(
    'emits updated index when updateIndex is added.',
    build: () => ScheduleManagerBloc(),
    act: (bloc) => bloc.add(const ScheduleManagerEvent.updateIndex()),
    wait: const Duration(seconds: 2),
    expect: () => [
      ScheduleManagerState.loading(all: true),
      predicate<ScheduleManagerState>(
        (state) => state.maybeMap(
          orElse: () => false,
          loaded: (_) => true,
        ),
      ),
      ScheduleManagerState.loading(),
    ],
    tearDown: () => box.clear(),
  );

  blocTest<ScheduleManagerBloc, ScheduleManagerState>(
    'Duplicate update index events should be dropped',
    build: () => ScheduleManagerBloc(),
    act: (bloc) => bloc
      ..add(const ScheduleManagerEvent.updateIndex())
      ..add(const ScheduleManagerEvent.updateIndex())
      ..add(const ScheduleManagerEvent.updateIndex()),
    wait: const Duration(seconds: 2),
    expect: () => [
      ScheduleManagerState.loading(all: true),
      predicate<ScheduleManagerState>(
        (state) => state.maybeMap(
          orElse: () => false,
          loaded: (_) => true,
        ),
      ),
      ScheduleManagerState.loading(),
    ],
    tearDown: () => box.clear(),
  );
}
