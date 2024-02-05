import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';

class ScheduleEventsProvider extends StatelessWidget {
  final Widget? child;
  final ScheduleKey scheduleKey;
  const ScheduleEventsProvider({
    super.key,
    required this.scheduleKey,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScheduleEventsCubit(
        context.read<ScheduleManagerBloc>(),
        scheduleKey,
      ),
      child: child,
    );
  }
}
