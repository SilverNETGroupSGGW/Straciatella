import 'package:flutter/material.dart';
import 'package:psggw/data/models/lesson/lesson.dart';

class LessonTile extends StatelessWidget {
  const LessonTile({
    super.key,
    required this.lesson,
    this.elevation = 0,
  });
  final double elevation;
  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          TimeDivider(lesson: lesson),
          LessonCard(lesson: lesson, elevation: elevation),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  const IconWithText({
    super.key,
    this.reverse = false,
    required this.icon,
    required this.text,
    required this.textStyle,
  });
  final bool reverse;
  final TextStyle? textStyle;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return reverse
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadedText(textStyle: textStyle, text: text, reverse: true),
              Container(
                width: 8,
              ),
              Icon(
                icon,
                size: 20,
              ),
            ],
          )
        : Row(
            children: [
              Icon(icon),
              Container(
                width: 8,
              ),
              FadedText(textStyle: textStyle, text: text),
            ],
          );
  }
}

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    required this.lesson,
    this.elevation = 0,
  });

  final Lesson lesson;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadedText(
                      text: lesson.name,
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconWithText(
                                icon: Icons.location_on,
                                text: lesson.classroom.name,
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                              ),
                              IconWithText(
                                icon: Icons.person,
                                text: lesson.lecturers.isNotEmpty
                                    ? lesson.lecturers.first.toDisplayString()
                                    : 'Brak prowadzącego',
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconWithText(
                                reverse: true,
                                icon: Icons.group,
                                text: lesson.groups.isNotEmpty
                                    ? lesson.groups.first.name
                                    : 'Brak grupy',
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                              ),
                              IconWithText(
                                reverse: true,
                                icon: Icons.comment,
                                text: lesson.comment ?? 'Brak komentarza',
                                textStyle:
                                    Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
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

class FadedText extends StatelessWidget {
  const FadedText({
    super.key,
    required this.textStyle,
    required this.text,
    this.reverse = false,
  });

  final String text;
  final TextStyle? textStyle;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        overflow: TextOverflow.fade,
        textAlign: reverse ? TextAlign.end : TextAlign.start,
        softWrap: false,
        maxLines: 1,
        style: textStyle,
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
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lesson.time.format(context),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Expanded(
          child: VerticalDivider(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lesson.endTime().format(context),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}
