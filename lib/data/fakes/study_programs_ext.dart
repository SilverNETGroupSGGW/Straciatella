part of 'fakes.dart';

final List<StudyProgramExt> fakeStudyProgramsExt = [
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
            ice: genICalendarDef(),
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
