import 'dart:async';
import 'dart:math';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/models/schedule_event/schedule_event_desc/schedule_event_desc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/widgets/icon_text.dart';
import 'package:silvertimetable/themes/extensions/schedule_event_theme.dart';

part 'schedule_event_card.dart';
part 'schedule_event_time_span.dart';

class ScheduleEventTile extends StatefulWidget {
  final ScheduleEvent event;
  final ScheduleViewMode mode;
  const ScheduleEventTile({
    super.key,
    required this.event,
    this.mode = ScheduleViewMode.student,
  });

  @override
  State<ScheduleEventTile> createState() => _ScheduleEventTileState();
}

class _ScheduleEventTileState extends State<ScheduleEventTile> {
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

    final startTime = widget.event.lesson.startTime;
    final endTime =
        widget.event.lesson.startTime.add(widget.event.lesson.duration);

    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: _EventCard(
              event: widget.event,
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
    );
  }
}
