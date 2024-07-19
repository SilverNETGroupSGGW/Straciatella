import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';
import 'package:silvertimetable/logic/schedule_filters/schedule_filters_cubit.dart';

class ScheduleFiltersProvider extends StatelessWidget {
  final Widget? child;
  final ScheduleKey scheduleKey;
  const ScheduleFiltersProvider({
    super.key,
    required this.scheduleKey,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScheduleFiltersCubit(
        scheduleEventsCubit: context.read<ScheduleEventsCubit>(),
        scheduleKey: scheduleKey,
      ),
      child: child,
    );
  }
}
