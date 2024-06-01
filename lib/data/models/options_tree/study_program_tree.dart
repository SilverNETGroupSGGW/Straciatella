import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';

enum StudyProgramOptionsLevels {
  // organization,
  faculty, // department
  fieldOfStudy,
  studyMode,
  degreeOfStudy,
  startYear,
  id,
}

OptionsTreeNode createStudyProgramOptionsTree(
  Iterable<StudyProgram> studyPrograms,
) {
  final root = OptionsTreeNode(StudyProgramOptionsLevels.values.first.name);
  for (final studyProgram in studyPrograms) {
    _addStudyProgramOptionsToTree(studyProgram, root);
  }
  return root;
}

void _addStudyProgramOptionsToTree(
  StudyProgram studyProgram,
  OptionsTreeNode root, [
  int level = 0,
]) =>
    addOptionsToTree(
      root,
      StudyProgramOptionsLevels.values,
      (level) => switch (level) {
        StudyProgramOptionsLevels.faculty => studyProgram.faculty,
        StudyProgramOptionsLevels.fieldOfStudy => studyProgram.fieldOfStudy,
        StudyProgramOptionsLevels.studyMode => studyProgram.studyMode,
        StudyProgramOptionsLevels.degreeOfStudy => studyProgram.degreeOfStudy,
        StudyProgramOptionsLevels.startYear =>
          studyProgram.startDate, // TODO: Grab year from start date.
        StudyProgramOptionsLevels.id => studyProgram.id,
      },
      level,
    );
