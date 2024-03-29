import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

/// Use this ro render whole list of schedules that are in cache
class ScheduleManagerSchedulesBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ExtendedScheduleCacheMap schedules,
  ) builder;
  const ScheduleManagerSchedulesBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.schedules != current.schedules;
      },
      builder: (context, state) => builder(context, state.schedules),
    );
  }
}
