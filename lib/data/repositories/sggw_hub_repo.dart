import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/providers/sggw_hub_api.dart';

class SggwHubRepo {
  final sggwHubApi = SggwHubApi();

  // gets list of lecturers for a user to choose from
  Future<List<LecturerBase>> getLecturers() async {
    throw UnimplementedError();
  }

  Future<LecturerExt> getLecturer(String lecturerId) async {
    throw UnimplementedError();
  }

  // gets list of studyprograms for a user to choose from
  Future<List<StudyProgramBase>> getStudyPrograms() async {
    throw UnimplementedError();
  }

  Future<StudyProgramExt> getStudyProgram(String studyProgramId) async {
    throw UnimplementedError();
  }
}
