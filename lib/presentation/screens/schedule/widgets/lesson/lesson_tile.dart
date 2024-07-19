import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/lesson/lesson_card_student.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/lesson/lesson_vertical_time_span.dart';

class LessonTile extends StatelessWidget {
  final String name;
  final String classroom;
  final List<String> lecturers;
  final List<String> groups;
  final String? comment;
  final TimeOfDay startTime;
  final Duration duration;
  final double elevation;

  @Deprecated(
    "Use LessonTile from presentation/models/lesson_data/lesson_data_tile instead",
  )
  const LessonTile({
    super.key,
    required this.name,
    required this.classroom,
    required this.lecturers,
    required this.groups,
    required this.comment,
    required this.startTime,
    required this.duration,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          // ignore: deprecated_member_use_from_same_package
          LessonVerticalTimeSpan(
            duration: duration,
            startTime: startTime,
          ),
          // ignore: deprecated_member_use_from_same_package
          LessonCardStudent(
            classroom: classroom,
            comment: comment,
            groups: groups,
            lecturers: lecturers,
            name: name,
            elevation: elevation,
          ),
        ],
      ),
    );
  }
}
