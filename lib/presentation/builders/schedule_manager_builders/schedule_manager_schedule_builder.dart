import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

class ScheduleManagerScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ExtendedSchedule? schedule,
    bool isLoading,
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
        state.schedules[scheduleKey],
        state.refreshing.contains(scheduleKey),
      ),
    );
  }
}
