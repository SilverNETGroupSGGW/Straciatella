import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/data/models/lesson/lesson.dart';
import 'package:psggw/data/extentions/time_of_day.dart';

import 'package:psggw/presentation/widgets/timeline/lesson_tile.dart';

class Timeline extends StatelessWidget {
  const Timeline({
    super.key,
    required this.lessons,
  });

  final List<Lesson> lessons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        final nextLesson =
            index + 1 < lessons.length ? lessons[index + 1] : null;
        final isBreak;
        if (nextLesson != null) {
          // if there is more than 15 minutes between lessons
          isBreak = nextLesson.time - (lesson.time + lesson.duration) >
              Duration(minutes: 15);
        } else {
          isBreak = false;
        }
        return Column(
          children: [
            LessonTile(
              lesson: lesson,
            ),
            if (isBreak)
              BreakDivider(
                duration: nextLesson!.time - (lesson.time + lesson.duration),
              ),
          ],
        );
      },
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
    String durationText = '';
    if (duration.inHours > 0) {
      durationText += duration.inHours.toString() + "'";
    }
    if (duration.inMinutes % 60 > 0) {
      durationText += " " + (duration.inMinutes % 60).toString() + '"';
    }

    return Row(
      children: [
        _genBreak(
          context,
          durationText,
        ),
        Expanded(child: Divider()),
        _genBreak(context, 'break'.tr()),
      ],
    );
  }
}
