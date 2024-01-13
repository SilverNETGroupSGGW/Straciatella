import 'dart:collection';

import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

/// Represents one node in a tree of options to choose\
///
/// [name] is a node name, usualy a property name of Schedule or Lecturer object\
/// [options] holds all the options that can be chosen where:
///   key is a value of chosen option
///   value is usually another OptionsTreeNode or if this node is a leaf it is null
class OptionsTreeNode<OptionValueType> {
  final String name;
  late final SplayTreeMap<OptionValueType, OptionsTreeNode?> options;
  OptionsTreeNode(
    this.name, [
    SplayTreeMap<OptionValueType, OptionsTreeNode?>? options,
  ]) {
    this.options = options ?? SplayTreeMap();
  }

  @override
  String toString([int tabs = 0]) {
    final t = List.filled(tabs, " ").join();
    return "$name: {\n$t ${options.entries.map((option) => "${option.key} --> ${option.value?.toString(tabs + 1)}").join(",\n$t ")}\n$t}";
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

  if (root.options[levelValue] == null) return;
  _addScheduleOptionsToTree(
    schedule,
    root.options[levelValue]!,
    level + 1,
  );
}
