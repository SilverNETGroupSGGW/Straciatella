import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

/// Use this ro render whole list of schedules that are available in the app
class ScheduleManagerSchedulesIndexBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    BaseScheduleCacheMap index,
  ) builder;

  const ScheduleManagerSchedulesIndexBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.schedulesIndex != current.schedulesIndex;
      },
      builder: (context, state) => builder(context, state.schedulesIndex),
    );
  }
}
