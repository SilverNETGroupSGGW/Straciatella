import 'dart:collection';

import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

/// Represents one node in a tree of options to choose\
///
/// [name] is a node name, usualy a property name of Schedule or Lecturer object\
/// [options] holds all the options that can be chosen where:
///   key is a value of chosen option
///   value is usually another OptionsTreeNode or if this node is a leaf it is null
class OptionsTreeNode<K, V> {
  final String name;
  late final SplayTreeMap<K, V> options;
  OptionsTreeNode(this.name, [SplayTreeMap<K, V>? options]) {
    this.options = options ?? SplayTreeMap();
  }
}

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
]) {
  final levelsCount = ScheduleOptionsLevels.values.length;
  if (level >= levelsCount) return;

  final levelValue = switch (ScheduleOptionsLevels.values[level]) {
    ScheduleOptionsLevels.faculty => schedule.faculty,
    ScheduleOptionsLevels.fieldOfStudy => schedule.fieldOfStudy,
    ScheduleOptionsLevels.studyMode => schedule.studyMode,
    ScheduleOptionsLevels.degreeOfStudy => schedule.degreeOfStudy,
    ScheduleOptionsLevels.semester => schedule.semester,
    ScheduleOptionsLevels.id => schedule.id,
  };

  root.options.putIfAbsent(
    levelValue,
    () => level < levelsCount - 1
        ? OptionsTreeNode(ScheduleOptionsLevels.values[level + 1].name)
        : null,
  );
  _addScheduleOptionsToTree(
    schedule,
    root.options[levelValue] as OptionsTreeNode,
    level + 1,
  );
}
