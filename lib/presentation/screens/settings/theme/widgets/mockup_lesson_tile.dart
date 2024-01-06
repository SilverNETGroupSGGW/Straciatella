import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/lesson_tile.dart';

const List<String> _mockLecturers = [
  "Marian Rejewski",
  "Henryk Zygalski",
  "Jerzy Różycki",
  "Nicola Tesla",
  "George Bool",
  "Alan Turing",
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

class MockupLessonTile extends StatelessWidget {
  const MockupLessonTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LessonTile(
      name: 'lesson'.tr().capitalize,
      classroom: _mockClassrooms.chooseOne(),
      lecturers: [_mockLecturers.chooseOne()],
      groups: _mockGroups.chooseMany(random.nextInt(4) + 1),
      comment: _mockComments.chooseOne(),
      startTime: TimeOfDay(hour: random.nextInt(8) + 8, minute: 0),
      duration: const Duration(hours: 1, minutes: 30),
      elevation: 1,
    );
  }
}
