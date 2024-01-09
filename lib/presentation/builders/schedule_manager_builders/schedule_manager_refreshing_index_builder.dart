import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

/// Use this builder to render refreshing state of a whole schedules index
class ScheduleManagerRefreshingIndexBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    bool isRefreshing,
  ) builder;

  const ScheduleManagerRefreshingIndexBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (previous, current) {
        return previous.refreshingIndex != current.refreshingIndex;
      },
      builder: (context, state) => builder(context, state.refreshingIndex),
    );
  }
}
