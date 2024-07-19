import 'package:flutter/material.dart';
import 'package:silvertimetable/data/fakes/fakes.dart';
import 'package:silvertimetable/presentation/models/lesson_data/lesson_data_tile/lesson_data_tile.dart';

class MockupLessonTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: LessonDataTile(
        lessonData: fakeFunnyStudyProgram.getAnyLesson(),
      ),
    );
  }
}
