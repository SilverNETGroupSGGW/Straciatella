import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

/// Use this builder to render schedules data
///
/// If extendedSchedule is null => there is no data of this schedules in cache (need to perform an update) \
/// If baseSchedule is null then this schedule is most likely deleted or hidden from view
class ScheduleManagerScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    BaseSchedule? baseSchedule,
    ExtendedSchedule? extendedSchedule,
  ) builder;
  final ScheduleKey scheduleKey;

  const ScheduleManagerScheduleBuilder({
    super.key,
    required this.scheduleKey,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.schedules[scheduleKey] !=
            current.schedules[scheduleKey];
      },
      builder: (context, state) => builder(
        context,
        state.schedulesIndex[scheduleKey],
        state.schedules[scheduleKey],
      ),
    );
  }
}
