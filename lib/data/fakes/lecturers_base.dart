part of 'fakes.dart';

final List<LecturerBase> fakeLecturersBase = [
  LecturerBase(
    id: "0",
    created: _now,
    updated: _now,
    firstName: "Jan",
    surName: "Kowalski",
    academicDegree: "profesor",
    email: "jankowalski@dhhe.edu.pl",
    institute: "ISS",
    organization: fakeOrganizations[0],
  ),
  LecturerBase(
    id: "1",
    created: _now,
    updated: _now,
    firstName: "Aleksandra",
    surName: "Nowak",
    academicDegree: "doktor",
    email: "aleksandranowak@dhhe.edu.pl",
    institute: "ISS",
    organization: fakeOrganizations[0],
  ),
];
