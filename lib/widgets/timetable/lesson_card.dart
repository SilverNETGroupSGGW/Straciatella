import 'package:psggw/models/lesson.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({super.key, required this.lesson, this.progress});

  final double? progress;
  final Lesson lesson;

  IconData lessonIcon(Lesson currentLesson) {
    if (currentLesson.type == LessonType.laboratory) {
      return Symbols.science_rounded;
    } else if (currentLesson.type == LessonType.exercise) {
      return Symbols.school_rounded;
    } else {
      return Symbols.edit_rounded;
    }
  }

  double elevationStatus(double? progress) {
    if (progress == 0) {
      return 1;
    } else if (progress == 1) {
      return 0;
    } else {
      return 8;
    }
  }

  Widget iconWithText(
      BuildContext context, IconData icon, String text, bool reverse) {
    Widget iconBox = Padding(
      padding: reverse
          ? const EdgeInsets.only(left: 6)
          : const EdgeInsets.only(right: 6),
      child: Icon(
        icon,
        size: 18,
      ),
    );
    return Row(
      mainAxisAlignment:
          reverse ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        reverse ? Container() : iconBox,
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        reverse ? iconBox : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 12),
            child: TimeColumn(currentLesson: lesson),
          ),
          Card(
            elevation: elevationStatus(progress),
            margin: const EdgeInsets.only(
              left: 12,
              right: 12,
              bottom: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 9, bottom: 9),
                  child: SizedBox(
                    width: 6,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: LinearProgressIndicator(
                        value: progress,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              lesson.name,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                iconWithText(
                                  context,
                                  Symbols.person,
                                  lesson.lecturersIds.join(", "),
                                  false,
                                ),
                                const SizedBox(height: 3),
                                iconWithText(
                                  context,
                                  lessonIcon(lesson),
                                  lesson.type.name,
                                  false,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                iconWithText(
                                  context,
                                  Symbols.chair_alt,
                                  lesson.classroomId,
                                  true,
                                ),
                                const SizedBox(height: 3),
                                iconWithText(
                                  context,
                                  Symbols.floor,
                                  lesson.groupsIds.join(", "),
                                  true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TimeColumn extends StatelessWidget {
  const TimeColumn({
    super.key,
    required Lesson currentLesson,
  }) : _lesson = currentLesson;

  final Lesson _lesson;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Fixes width when start and end times are < 10:00
          SizedBox(
            height: 0,
            child: Text(
              "11:11",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          Text(
            _lesson.startTime.toString(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const Expanded(
            child: VerticalDivider(
              indent: 9,
              endIndent: 9,
            ),
          ),
          Text(
            _lesson.duration.toString(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
