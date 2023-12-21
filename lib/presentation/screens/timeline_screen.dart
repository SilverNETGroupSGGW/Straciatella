import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/data/mocks/schedules.dart';
import 'package:psggw/data/models/lesson/lesson.dart';

import 'package:psggw/presentation/widgets/timeline/lesson_tile.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
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

  _genBreak(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontStyle: FontStyle.italic,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _genBreak(
          context,
          duration.inMinutes.toString() + ' ' + 'minutes'.tr(),
        ),
        Expanded(child: Divider()),
        _genBreak(context, 'break'.tr()),
      ],
    );
  }
}
