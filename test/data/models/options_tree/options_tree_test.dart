// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:silvertimetable/data/fakes/sggw_hub_repo_fake.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/options_tree/lecturers_tree.dart';
import 'package:silvertimetable/data/models/options_tree/schedules_tree.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

void main() {
  test("Prints a tree from fake schedules", () async {
    final index = await FakeSggwHubRepo().getSchedulesIndex();
    final schedules = index.whereType<ScheduleBase>();
    final treeRoot = createScheduleOptionsTree(schedules);

    print(treeRoot);
  });

  test("Prints a tree from fake lecturers", () async {
    final index = await FakeSggwHubRepo().getSchedulesIndex();
    final lecturers = index.whereType<LecturerBase>();
    final treeRoot = createLecturerOptionsTree(lecturers);

    print(treeRoot);
  });
}
