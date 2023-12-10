import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/data/schedules.dart';
import 'package:psggw/models/lesson_model/lesson.dart';

import 'package:psggw/widgets/timeline/lesson_tile.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Add handling
    List<Lesson> lessons = schedules[0].lessons;
    return ListView(
      children: [
        LessonTile(
          lesson: lessons[0],
        ),
        BreakDivider(
          duration: Duration(minutes: 15),
        ),
        LessonTile(
          lesson: lessons[0],
          elevation: 0.6,
        ),
        BreakDivider(
          duration: Duration(minutes: 15),
        ),
        LessonTile(
          lesson: lessons[0],
          elevation: 2,
        ),
      ],
    );
  }
}

class BreakDivider extends StatelessWidget {
  const BreakDivider({
    super.key,
    required this.duration,
  });

  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4.0,
          ),
          child: Text(
            duration.inMinutes.toString() + ' ' + 'minutes'.tr(),
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
        ),
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4.0,
          ),
          child: Text(
            'break'.tr(),
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
        ),
      ],
    );
  }
}
