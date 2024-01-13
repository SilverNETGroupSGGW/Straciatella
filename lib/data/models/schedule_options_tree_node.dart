import 'dart:collection';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';
import 'package:silvertimetable/data/models/schedule/schedule_base.dart';

part 'schedule_options_tree_node.freezed.dart';

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

  bool get isLeaf {
    return options.length == 1 && options.entries.first.value == null;
  }

  OptionValueType? get leafValue {
    if (isLeaf) {
      return options.entries.first.key;
    }
    return null;
  }

  @override
  String toString([int tabs = 0]) {
    final t = List.filled(tabs, " ").join();
    final optionsStr = leafValue ??
        "{\n$t ${options.entries.map(
              (o) => "${o.key} --> ${o.value?.toString(tabs + 1)}",
            ).join(",\n$t ")}\n$t}";
    return "$name: $optionsStr";
  }
}

// ---------SCHEDULE TREE-----------
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
    // ScheduleOptionsLevels.academiYear => schedule.academiYear,
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

// ---------LECTURER TREE-----------
enum LecturerOptionsLevels {
  fullname,
  id,
}

@freezed
class _LecturerFullNameValue
    with _$LecturerFullNameValue
    implements Comparable<_LecturerFullNameValue> {
  factory _LecturerFullNameValue({
    required String firstName,
    required String surname,
    required String academicDegree,
  }) = __LecturerFullNameValue;
  _LecturerFullNameValue._();

  @override
  int compareTo(_LecturerFullNameValue other) {
    final cmpFirstName = firstName.compareTo(other.firstName);
    if (cmpFirstName != 0) return cmpFirstName;
    final cmpSurname = surname.compareTo(other.surname);
    if (cmpSurname != 0) return cmpSurname;

    return academicDegree.compareTo(other.academicDegree);
  }

  @override
  String toString() {
    return "$academicDegree $firstName $surname";
  }
}

OptionsTreeNode createLecturerOptionsTree(Iterable<LecturerBase> lecturers) {
  final root = OptionsTreeNode(LecturerOptionsLevels.values.first.name);
  for (final lecturer in lecturers) {
    _addLecturerOptionsToTree(lecturer, root);
  }
  return root;
}

void _addLecturerOptionsToTree(
  LecturerBase lecturer,
  OptionsTreeNode root, [
  int level = 0,
]) {
  final levelsCount = LecturerOptionsLevels.values.length;

  final levelValue = switch (LecturerOptionsLevels.values[level]) {
    LecturerOptionsLevels.fullname => _LecturerFullNameValue(
        firstName: lecturer.firstName,
        surname: lecturer.surname,
        academicDegree: lecturer.academicDegree,
      ),
    LecturerOptionsLevels.id => lecturer.id,
  };

  root.options.putIfAbsent(
    levelValue,
    () => level < levelsCount - 1
        ? OptionsTreeNode(LecturerOptionsLevels.values[level + 1].name)
        : null,
  );

  if (root.options[levelValue] == null) return;
  _addLecturerOptionsToTree(
    lecturer,
    root.options[levelValue]!,
    level + 1,
  );
}
