import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_provider.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_empty_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_loaded_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_loading_screen.dart';

enum ScheduleViewMode { student, lecturer }

// todo: wygenerować przykładowy plan zajęć
// todo: widgety od plan not found (error state w cubicie)

class ScheduleScreenArgs {
  final ScheduleKey scheduleKey;
  const ScheduleScreenArgs(this.scheduleKey);
}

class ScheduleScreen extends StatelessWidget {
  final ScheduleKey scheduleKey;
  final ScheduleViewMode mode;

  static ScheduleScreenArgs args(ScheduleKey key) => ScheduleScreenArgs(key);

  const ScheduleScreen({
    super.key,
    required this.scheduleKey,
    this.mode = ScheduleViewMode.student,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleEventsProvider(
      scheduleKey: scheduleKey,
      child: BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
        builder: (context, state) {
          return switch ((state.events.isEmpty, state.isLoading)) {
            (true, false) => const ScheduleEventsEmptyScreen(),
            (true, true) => const ScheduleEventsLoadingScreen(),
            (false, _) => const ScheduleEventsLoadedScreen(),
          };
        },
      ),
    );
  }
}
