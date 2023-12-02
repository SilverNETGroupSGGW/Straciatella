import 'package:flutter/material.dart';
import 'package:psggw/models/group.dart';
import 'package:psggw/models/lesson.dart';

class LessonTile extends StatelessWidget {
  const LessonTile({
    super.key,
    required this.lesson,
  });

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          TimeDivider(lesson: lesson),
          LessonCard(lesson: lesson),
        ],
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    required this.lesson,
  });

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      lesson.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (Group group in lesson.groups) Text(group.name),
                            Text(lesson.classroom!.name),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            for (Group group in lesson.groups) Text(group.name),
                            Text(lesson.classroom!.name),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeDivider extends StatelessWidget {
  const TimeDivider({
    super.key,
    required this.lesson,
  });

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(lesson.startTime.format(context)),
        ),
        Expanded(
          child: VerticalDivider(),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(lesson.duration.inMinutes.toString()),
        ),
      ],
    );
  }
}
