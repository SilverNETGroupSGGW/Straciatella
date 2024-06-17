part of 'fakes.dart';

final fakeSubjectTypes = (
  lecture: SubjectType(
    id: "0",
    created: _now,
    updated: _now,
    name: "wykład",
    isPrimitiveType: true,
  ),
  classs: SubjectType(
    id: "1",
    created: _now,
    updated: _now,
    name: "ćwiczenia",
    isPrimitiveType: true,
  ),
  laboratory: SubjectType(
    id: "2",
    created: _now,
    updated: _now,
    name: "laboratoria",
    isPrimitiveType: true,
  ),
);
