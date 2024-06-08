import 'package:mockito/mockito.dart';
import 'package:silvertimetable/data/fakes/mock_objects.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';

class FakeSggwHubRepo extends Fake implements SggwHubRepo {
  @override
  Future<List<LecturerBase>> getLecturers() async {
    return mockLecturersBase;
  }

  @override
  Future<LecturerExt> getLecturer(String lecturerId) async {
    return mockLecturersExt.first;
  }

  // gets list of studyprograms for a user to choose from
  @override
  Future<List<StudyProgramBase>> getStudyPrograms() async {
    return mockStudyProgramsBase;
  }

  @override
  Future<StudyProgramExt> getStudyProgram(String studyProgramId) async {
    return mockStudyProgramsExt.first;
  }
}
