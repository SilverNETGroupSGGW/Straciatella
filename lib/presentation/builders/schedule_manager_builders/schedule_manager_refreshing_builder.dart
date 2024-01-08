import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

class ScheduleManagerRefreshingBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ScheduleManagerState schedules)
      builder;
  const ScheduleManagerRefreshingBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.refreshing != current.refreshing;
      },
      builder: builder,
    );
  }
}
