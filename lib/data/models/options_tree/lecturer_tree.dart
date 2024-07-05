import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';

part 'lecturer_tree.freezed.dart';

enum LecturerOptionsLevels {
  // organization,
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

OptionsTreeNode createLecturerOptionsTree(Iterable<Lecturer> lecturers) {
  final root = OptionsTreeNode(LecturerOptionsLevels.values.first.name);
  for (final lecturer in lecturers) {
    _addLecturerOptionsToTree(lecturer, root);
  }
  return root;
}

void _addLecturerOptionsToTree(
  Lecturer lecturer,
  OptionsTreeNode root, [
  int level = 0,
]) =>
    addOptionsToTree(
      root,
      LecturerOptionsLevels.values,
      (level) => switch (level) {
        LecturerOptionsLevels.fullname => _LecturerFullNameValue(
            firstName: lecturer.firstName,
            surname: lecturer.surName,
            academicDegree: lecturer.academicDegree,
          ),
        LecturerOptionsLevels.id => lecturer.id,
      },
      level,
    );
