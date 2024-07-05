part of 'fakes.dart';

final fakeSubjectTypes = (
  lecture: FakeGenerators.genSubjectType(
    name: "wykład",
  ),
  classs: FakeGenerators.genSubjectType(
    name: "ćwiczenia",
  ),
  laboratory: FakeGenerators.genSubjectType(
    name: "laboratoria",
  ),
);
