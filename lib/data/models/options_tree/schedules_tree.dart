import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

enum ScheduleOptionsLevels {
  // academiYear,
  faculty,
  fieldOfStudy,
  studyMode,
  degreeOfStudy,
  semester,
  id,
}

OptionsTreeNode createScheduleOptionsTree(Iterable<ScheduleBase> schedules) {
  final root = OptionsTreeNode(ScheduleOptionsLevels.values.first.name);
  for (final schedule in schedules) {
    _addScheduleOptionsToTree(schedule, root);
  }
  return root;
}

void _addScheduleOptionsToTree(
  ScheduleBase schedule,
  OptionsTreeNode root, [
  int level = 0,
]) =>
    addOptionsToTree(
      root,
      ScheduleOptionsLevels.values,
      (level) => switch (level) {
        // ScheduleOptionsLevels.academiYear => schedule.academiYear,
        ScheduleOptionsLevels.faculty => schedule.faculty,
        ScheduleOptionsLevels.fieldOfStudy => schedule.fieldOfStudy,
        ScheduleOptionsLevels.studyMode => schedule.studyMode,
        ScheduleOptionsLevels.degreeOfStudy => schedule.degreeOfStudy,
        ScheduleOptionsLevels.semester => schedule.semester,
        ScheduleOptionsLevels.id => schedule.id,
      },
      level,
    );
