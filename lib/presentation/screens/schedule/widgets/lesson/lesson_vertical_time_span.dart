import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';

class LessonVerticalTimeSpan extends StatelessWidget {
  final TimeOfDay startTime;
  final Duration duration;

  @Deprecated(
    "Use LessonTile from presentation/models/lesson_data/lesson_data_tile instead",
  )
  const LessonVerticalTimeSpan({
    super.key,
    required this.startTime,
    required this.duration,
  });

  TimeOfDay _getEndTime() {
    return startTime + duration;
  }

  @override
  Widget build(BuildContext context) {
    final labelSmall = Theme.of(context).textTheme.labelSmall;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            startTime.format(context),
            style: labelSmall,
          ),
        ),
        const Expanded(
          child: VerticalDivider(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _getEndTime().format(context),
            style: labelSmall,
          ),
        ),
      ],
    );
  }
}
