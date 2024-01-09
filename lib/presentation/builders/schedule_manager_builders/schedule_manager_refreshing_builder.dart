import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

/// Use this builder to render refreshing state of a given schedule
class ScheduleManagerRefreshingBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    bool isRefreshing,
  ) builder;
  final ScheduleKey scheduleKey;

  const ScheduleManagerRefreshingBuilder({
    super.key,
    required this.builder,
    required this.scheduleKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.refreshing.contains(scheduleKey) !=
            current.refreshing.contains(scheduleKey);
      },
      builder: (context, state) => builder(
        context,
        state.refreshing.contains(scheduleKey),
      ),
    );
  }
}
