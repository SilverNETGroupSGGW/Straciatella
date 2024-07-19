part of 'fakes.dart';

const List<(String, String)> _mockLecturers = [
  ("Marian", "Rejewski"),
  ("Henryk", "Zygalski"),
  ("Jerzy", "Różycki"),
  ("Nicola", "Tesla"),
  ("George", "Bool"),
  ("Alan", "Turing"),
];

const List<String> _mockClassrooms = [
  "3/77A",
  "3/77B",
  "Aula IV",
];

const List<String> _mockGroups = [
  "ISI",
  "ISK",
  "SIAG",
  "TM",
  "ZM",
];

const List<String> _mockComments = [
  "Every mistake is a lesson in disguise",
  "Learn to question, question to learn",
  "In learning, we find purpose",
];

final StudyProgramExt fakeFunnyStudyProgram = StudyProgram.extWithBase(
  base: FakeGenerators.genStudyProgramBase(
    tenant: FakeGenerators.genTenant(
      organization: fakeOrganizations.first,
    ),
    name: LocaleKeys.lesson.tr().capitalize,
  ),
  semesters: [
    FakeGenerators.genStudySemester(
      subjects: [
        FakeGenerators.genSubject(
          groups: _mockGroups
              .chooseMany(random.nextInt(4) + 1)
              .map(
                (g) => FakeGenerators.genStudentGroup(
                  name: g,
                ),
              )
              .toList(),
          lessons: [
            FakeGenerators.genLessonDef(ice: genICalendarDef(count: 1)),
          ],
          classroom: FakeGenerators.genClassroom(
            type: FakeGenerators.genClassroomType(
              name: _mockClassrooms.chooseOne(),
            ),
          ),
          lecturers: () {
            final l = _mockLecturers.chooseOne();
            return [
              FakeGenerators.genLecturerBase(
                organization: fakeOrganizations.first,
                firstName: l.$1,
                surName: l.$2,
              ),
            ];
          }(),
          type: FakeGenerators.genSubjectType(name: "lecture"),
          comment: _mockComments.chooseOne(),
        ),
      ],
    ),
  ],
);

final List<StudyProgramExt> fakeStudyProgramsExt = [
  StudyProgram.extWithBase(
    base: FakeGenerators.genStudyProgramBase(
      tenant: FakeGenerators.genTenant(organization: fakeOrganizations[0]),
    ),
    semesters: [
      FakeGenerators.genStudySemester(
        year: 1,
        semester: 2,
        subjects: [
          // Monday
          FakeGenerators.genSubject(
            name: "Programowanie Obiektowe",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  count: 8,
                  start: DateTime(2024, 2, 19, 8, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Rachunek Prawdopodobieństwa",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 19, 10, 15),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Język obcy",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 19, 12, 30),
                ),
              ),
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 12, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Makroekonomia",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 19, 14),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Ochrona własności intelektualnej",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 19, 15, 45),
                  duration: const Duration(minutes: 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Rachunek prawdopodobieństwa",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([0, 1]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 19, 16, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          // Thu
          FakeGenerators.genSubject(
            name: "Analiza matematyczna 2",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 10),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Statystyka opisowa i ekonomiczna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups,
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 11, 45),
                  duration: const Duration(minutes: 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          FakeGenerators.genSubject(
            name: "Programowanie obiektowe",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([0]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 12, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Statystyka opisowa i ekonomiczna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([1]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 12, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Matematyka dyskretna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([2, 3]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 12, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Rachunek prawdopodobieństwa",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([4]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 12, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          FakeGenerators.genSubject(
            name: "Matematyka dyskretna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([0]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 14, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Programowanie obiektowe",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([1, 3]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 14, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Statystyka opisowa i ekonomiczna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([4]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 14, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          FakeGenerators.genSubject(
            name: "Statystyka opisowa i ekonomiczna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([0]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 16, 15),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Matematyka dyskretna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([1, 4]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 16, 15),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          FakeGenerators.genSubject(
            name: "Makroekonomia",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([0, 1]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 20, 18),
                  duration: const Duration(minutes: 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          // Wed
          FakeGenerators.genSubject(
            name: "Makroekonomia",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([2, 3]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 8, 45),
                  duration: const Duration(minutes: 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Analiza matematyczna 2",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([2, 3]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 9, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Analiza matematyczna 2",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([4]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 9, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          FakeGenerators.genSubject(
            name: "Analiza matematyczna 2",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([0, 1]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 13, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Programowanie obiektowe",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([2, 4]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 13, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Statyka opisowa i ekonomiczna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([3]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 13, 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          FakeGenerators.genSubject(
            name: "Statyka opisowa i ekonomiczna",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([2]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 15, 30),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
          FakeGenerators.genSubject(
            name: "Makroekonomia",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([4]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 21, 15, 45),
                  duration: const Duration(minutes: 45),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),

          // Thursday
          FakeGenerators.genSubject(
            name: "Rachunek prawdopodobieństwa",
            classroom: FakeGenerators.genClassroom(
              type: FakeGenerators.genClassroomType(),
            ),
            groups: fakeStudentGroups.getSome([2, 3]),
            lessons: [
              FakeGenerators.genLessonDef(
                ice: genICalendarDef(
                  start: DateTime(2024, 2, 22, 9),
                ),
              ),
            ],
            lecturers: fakeLecturersBase,
            type: FakeGenerators.genSubjectType(),
          ),
        ],
      ),
    ],
  ),
  StudyProgram.extWithBase(
    base: fakeStudyProgramsBase[0],
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
            lecturers: fakeLecturersBase,
            created: _now,
            updated: _now,
            isRemote: false,
            classroom: fakeClassrooms[0],
            comment: '',
            groups: fakeStudentGroups,
            isConditional: false,
            lessons: [
              LessonDef(
                id: "0",
                ice: genICalendarDef(),
                created: _now,
                updated: _now,
              ),
            ],
            type: fakeSubjectTypes.lecture,
          ),
        ],
      ),
    ],
  ),
  StudyProgram.extWithBase(
    base: fakeStudyProgramsBase[1],
    semesters: [],
  ),
];
