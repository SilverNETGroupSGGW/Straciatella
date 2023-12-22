import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/lesson_card_student.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/lesson_vertical_time_span.dart';

class LessonTile extends StatelessWidget {
  final String name;
  final String classroom;
  final List<String> lecturers;
  final List<String> groups;
  final String? comment;
  final TimeOfDay startTime;
  final Duration duration;

  const LessonTile({
    super.key,
    required this.name,
    required this.classroom,
    required this.lecturers,
    required this.groups,
    required this.comment,
    required this.startTime,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          LessonVerticalTimeSpan(
            duration: duration,
            startTime: startTime,
          ),
          LessonCardStudent(
            elevation: 0,
            classroom: classroom,
            comment: comment,
            groups: groups,
            lecturers: lecturers,
            name: name,
          ),
        ],
      ),
    );
  }
}
