import 'package:flutter/material.dart';
import 'package:silvertimetable/helpers.dart';

class LessonVerticalTimeSpan extends StatelessWidget {
  final TimeOfDay startTime;
  final Duration duration;

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            startTime.format(context),
            style: labelSmall,
          ),
        ),
        Expanded(
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
