import 'dart:async';
import 'dart:math';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/lesson_data/lesson_data.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/models/lesson_data/lesson_data_desc/lesson_data_desc.dart';
import 'package:silvertimetable/presentation/models/lesson_data/lesson_data_provider.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/widgets/icon_text.dart';
import 'package:silvertimetable/themes/extensions/schedule_event_theme.dart';

part 'lesson_data_card.dart';
part 'lesson_data_time_span.dart';

class LessonDataTile extends StatefulWidget {
  final LessonData lessonData;
  final ScheduleViewMode mode;
  const LessonDataTile({
    super.key,
    required this.lessonData,
    this.mode = ScheduleViewMode.student,
  });

  @override
  State<LessonDataTile> createState() => _LessonDataTileState();
}

class _LessonDataTileState extends State<LessonDataTile> {
  late DateTime currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    currentTime = DateTime.now();

    // Check if minute has changed and update widget
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final time = DateTime.now();
      if (time.minute != currentTime.minute) {
        setState(() {
          currentTime = time;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final startTime = DateTime.now().subtract(const Duration(minutes: 3));
    // final endTime = DateTime.now().add(const Duration(minutes: 3));

    final startTime = widget.lessonData.lesson.startTime;
    final endTime = widget.lessonData.lesson.startTime
        .add(widget.lessonData.lesson.duration);

    return LessonDataProvider(
      widget.lessonData,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: _EventCard(
                mode: widget.mode,
                currentTime: currentTime,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: _EventTimeSpan(
                startTime: startTime,
                endTime: endTime,
                currentTime: currentTime,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
