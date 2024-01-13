// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:silvertimetable/data/fakes/sggw_hub_repo_fake.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';
import 'package:silvertimetable/data/models/schedule_options_tree_node.dart';

void main() {
  test("Prints a tree from fake schedules", () async {
    final index = await FakeSggwHubRepo().getSchedulesIndex();
    final schedules = index.whereType<ScheduleBase>();
    final treeRoot = createScheduleOptionsTree(schedules);

    print(treeRoot);
  });
}
