import 'package:flutter_test/flutter_test.dart';
import 'package:silvertimetable/data/fakes/fakes.dart';
import 'package:silvertimetable/data/models/schedule_filters_info.dart';

void main() async {
  final ScheduleFiltersInfo info = ScheduleFiltersInfo({
    fakeStudyProgramsBase[0]: {
      fakeStudySemesters[0]: {
        fakeStudentGroups[0],
        fakeStudentGroups[1],
      },
    },
  });
  group('check byStudentGroup contains', () {
    test('Expect true when contains', () {
      expect(
        info.containsStudentGroup(
          fakeStudyProgramsBase[0].id,
          fakeStudySemesters[0].id,
          fakeStudentGroups[0].id,
        ),
        true,
      );
    });

    test('Expect false when doesnt contain group', () {
      expect(
        info.containsStudentGroup(
          fakeStudyProgramsBase[0].id,
          fakeStudySemesters[0].id,
          fakeStudentGroups[2].id,
        ),
        false,
      );
    });

    test('Expect false when does contain but in a wrong semester', () {
      expect(
        info.containsStudentGroup(
          fakeStudyProgramsBase[0].id,
          fakeStudySemesters[1].id,
          fakeStudentGroups[0].id,
        ),
        false,
      );
    });
  });
}
