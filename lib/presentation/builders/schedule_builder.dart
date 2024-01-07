import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/builders/schedule_manager_builders.dart';

class ScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ExtendedSchedule? schedule,
  ) builder;
  final ScheduleKey scheduleKey;

  const ScheduleBuilder({
    super.key,
    required this.builder,
    required this.scheduleKey,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleManagerLoadedBuilder(
      builder: (context, state) {
        return builder(
          context,
          state.mapOrNull(
            loaded: (state) => state.schedules[scheduleKey],
          ),
        );
      },
    );
  }
}
