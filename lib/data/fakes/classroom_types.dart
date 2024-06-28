part of 'fakes.dart';

final fakeClassroomTypes = (
  normal: FakeGenerators.genClassroomType(
    name: "sala",
    isPrimitiveType: true,
  ),
  auditorium: FakeGenerators.genClassroomType(
    name: "aula",
    isPrimitiveType: true,
  ),
  computerLab: FakeGenerators.genClassroomType(
    name: "sala komputerowa",
    isPrimitiveType: true,
  ),
  lab: FakeGenerators.genClassroomType(
    name: "laboratorium",
    isPrimitiveType: true,
  ),
);
