part of 'fakes.dart';

final List<LecturerBase> fakeLecturersBase = [
  FakeGenerators.genLecturerBase(
    firstName: "Jan",
    surName: "Kowalski",
    academicDegree: "profesor",
    email: "jankowalski@dhhe.edu.pl",
    institute: "ISS",
    organization: fakeOrganizations[0],
  ),
  FakeGenerators.genLecturerBase(
    firstName: "Aleksandra",
    surName: "Nowak",
    academicDegree: "doktor",
    email: "aleksandranowak@dhhe.edu.pl",
    institute: "ISS",
    organization: fakeOrganizations[0],
  ),
];
