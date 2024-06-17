part of 'fakes.dart';

final List<StudyProgramBase> fakeStudyProgramsBase = [
  StudyProgramBase(
    id: "0",
    name: "Informatyka",
    created: _now,
    updated: _now,
    fieldOfStudy: "Informatyka",
    studyMode: "stac",
    degreeOfStudy: "inzynierskie",
    startDate: "2020-01-01",
    tenant: fakeTenants[0],
    faculty: "EXON",
  ),
  StudyProgramBase(
    id: "1",
    name: "Informatyka",
    created: _now,
    updated: _now,
    fieldOfStudy: "Informatyka",
    studyMode: "niestac",
    degreeOfStudy: "inzynierskie",
    faculty: "EXON",
    tenant: fakeTenants[0],
    startDate: '2020-01-02',
  ),
];
