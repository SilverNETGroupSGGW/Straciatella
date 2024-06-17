import 'package:mockito/mockito.dart';
import 'package:silvertimetable/data/fakes/fakes.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';

class FakeSggwHubRepo extends Fake implements SggwHubRepo {
  @override
  Future<List<LecturerBase>> getLecturers() async {
    return fakeLecturersBase;
  }

  @override
  Future<LecturerExt> getLecturer(String lecturerId) async {
    return fakeLecturersExt.first;
  }

  // gets list of studyprograms for a user to choose from
  @override
  Future<List<StudyProgramBase>> getStudyPrograms() async {
    return fakeStudyProgramsBase;
  }

  @override
  Future<StudyProgramExt> getStudyProgram(String studyProgramId) async {
    return fakeStudyProgramsExt.first;
  }
}
