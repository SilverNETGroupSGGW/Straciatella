import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

class ScheduleManagerLoadedBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ScheduleManagerState) builder;
  const ScheduleManagerLoadedBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (_, current) {
        return current.maybeMap(
          loaded: (_) => true,
          orElse: () => false,
        );
      },
      builder: builder,
    );
  }
}

class ScheduleManagerLoadingBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ScheduleManagerState) builder;
  const ScheduleManagerLoadingBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      buildWhen: (_, current) {
        return current.maybeMap(
          loading: (_) => true,
          orElse: () => false,
        );
      },
      builder: builder,
    );
  }
}
