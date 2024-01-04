import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/lesson_tile.dart';

class MockupLessonTile extends StatelessWidget {
  const MockupLessonTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LessonTile(
      name: 'lesson'.tr(),
      classroom: 'classroom'.tr(),
      lecturers: ['lecturer'.tr()],
      groups: [
        'group'.tr(),
      ],
      comment: "comment".tr(),
      startTime: const TimeOfDay(hour: 8, minute: 0),
      duration: const Duration(hours: 1, minutes: 30),
    );
  }
}
