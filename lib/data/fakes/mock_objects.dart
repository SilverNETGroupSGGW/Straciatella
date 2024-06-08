import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';

final now = DateTime.now();

final List<Organization> mockOrganizations = [
  Organization(
    id: "0",
    name: "Uczelnia DHHE",
    created: now,
    updated: now,
  ),
];

final List<Tenant> mockTenants = [
  Tenant(
    id: "0",
    name: "Uczelnia DHHE",
    created: now,
    updated: now,
    organization: mockOrganizations[0],
  ),
];

final List<Classroom> mockClassrooms = [
  Classroom(
    id: "0",
    name: "Sala 1",
    created: now,
    updated: now,
    building: "30",
    floor: "1",
    capacity: 20,
    type: ClassroomType(
      id: "0",
      name: "sala",
      isPrimitiveType: true,
    ),
  ),
];

final List<StudentGroup> mockStudentGroups = [
  StudentGroup(
    id: "0",
    created: now,
    updated: now,
    name: "Grupa 1",
    capacity: 20,
  ),
  StudentGroup(
    id: "0",
    created: now,
    updated: now,
    name: "Grupa 2",
    capacity: 30,
  ),
];

final List<LecturerBase> mockLecturersBase = [
  LecturerBase(
    id: "0",
    created: now,
    updated: now,
    firstName: "Jan",
    surName: "Kowalski",
    academicDegree: "profesor",
    email: "jankowalski@dhhe.edu.pl",
    institute: "ISS",
    organization: mockOrganizations[0],
  ),
  LecturerBase(
    id: "1",
    created: now,
    updated: now,
    firstName: "Aleksandra",
    surName: "Nowak",
    academicDegree: "doktor",
    email: "aleksandranowak@dhhe.edu.pl",
    institute: "ISS",
    organization: mockOrganizations[0],
  ),
];

final List<StudyProgramBase> mockStudyProgramsBase = [
  StudyProgramBase(
    id: "0",
    name: "Informatyka",
    created: now,
    updated: now,
    fieldOfStudy: "Informatyka",
    studyMode: "stac",
    degreeOfStudy: "inzynierskie",
    startDate: "2020-01-01",
    tenant: mockTenants[0],
    faculty: "EXON",
  ),
  StudyProgramBase(
    id: "1",
    name: "Informatyka",
    created: now,
    updated: now,
    fieldOfStudy: "Informatyka",
    studyMode: "niestac",
    degreeOfStudy: "inzynierskie",
    faculty: "EXON",
    tenant: mockTenants[0],
    startDate: '2020-01-02',
  ),
];

final List<StudyProgramExt> mockStudyProgramsExt = [
  StudyProgramExt(
    id: "0",
    name: "Informatyka",
    created: now,
    updated: now,
    fieldOfStudy: "Informatyka",
    studyMode: "stac",
    degreeOfStudy: "inzynierskie",
    startDate: "2020-01-01",
    tenant: mockTenants[0],
    faculty: 'EXON',
    semesters: [
      StudySemester(
        id: "0",
        year: 1,
        semester: 1,
        startDate: DateTime(2020),
        subjects: [
          Subject(
            id: "0",
            name: "Test",
            lecturers: mockLecturersBase,
            created: now,
            updated: now,
            ice: "", // todo
            isRemote: false,
            classroom: mockClassrooms[0],
            comment: '',
            groups: mockStudentGroups,
            isConditional: false,
            lessons: [
              LessonDef(
                id: "0",
                ice: "", // todo
                created: now,
                updated: now,
              ),
            ],
            type: SubjectType(
              id: "0",
              name: "przedmiot",
              isPrimitiveType: true,
            ),
          ),
        ],
      ),
    ],
  ),
  StudyProgramExt(
    id: "1",
    name: "Informatyka",
    created: now,
    updated: now,
    fieldOfStudy: "Informatyka",
    studyMode: "niestac",
    degreeOfStudy: "inzynierskie",
    startDate: '2020-01-02',
    tenant: mockTenants[0],
    faculty: 'EXON',
    semesters: [],
  ),
];

final List<LecturerExt> mockLecturersExt = [
  LecturerExt(
    id: "0",
    created: now,
    updated: now,
    firstName: "Jan",
    surName: "Kowalski",
    academicDegree: "profesor",
    email: "jankowalski@dhhe.edu.pl",
    institute: "ISS",
    organization: mockOrganizations[0],
    studyPrograms: mockStudyProgramsExt,
  ),
];
