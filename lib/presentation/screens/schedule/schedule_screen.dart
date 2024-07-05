import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_provider.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_empty_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_error_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_loaded_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_loading_screen.dart';

enum ScheduleViewMode { student, lecturer }

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
          return switch ((
            state.schedule?.getTimeSpan() == null,
            state.isLoading,
            state.hasError
          )) {
            (true, false, false) => const ScheduleEventsEmptyScreen(),
            (true, true, _) => const ScheduleEventsLoadingScreen(),
            (false, _, _) => const ScheduleEventsLoadedScreen(),
            (true, false, true) => const ScheduleEventsErrorScreen(),
          };
        },
      ),
    );
  }
}
