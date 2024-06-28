part of 'fakes.dart';

extension on List<StudentGroup> {
  List<StudentGroup> getSome(List<int> indexes) {
    final List<StudentGroup> result = [];

    for (final int index in indexes) {
      if (index >= length) continue;
      result.add(this[index]);
    }

    return result;
  }
}

final List<StudentGroup> fakeStudentGroups = [
  FakeGenerators.genStudentGroup(
    name: "gr 1",
  ),
  FakeGenerators.genStudentGroup(
    name: "gr 2",
  ),
  FakeGenerators.genStudentGroup(
    name: "gr 3",
  ),
  FakeGenerators.genStudentGroup(
    name: "gr 4",
  ),
  FakeGenerators.genStudentGroup(
    name: "gr 5",
  ),
];
