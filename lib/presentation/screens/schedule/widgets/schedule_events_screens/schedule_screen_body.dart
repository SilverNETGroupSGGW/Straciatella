import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/helpers.dart';
import 'package:silvertimetable/presentation/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/calendar_page_view.dart';

/// Displays events of a given schedule
class ScheduleScreenBody extends StatelessWidget {
  final ScheduleViewMode mode;

  const ScheduleScreenBody({
    super.key,
    this.mode = ScheduleViewMode.student,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
      buildWhen: (previous, current) => previous.events != current.events,
      builder: (context, state) {
        final timespan = state.events.keys.getTimeSpan();
        return CalendarPageView(
          firstDay: timespan.firstDay,
          lastDay: timespan.lastDay,
          dayBuilder: (context, controller, day, page) => ListView.builder(
            itemCount: state.events[day]?.length ?? 0,
            itemBuilder: (context, index) {
              final event = state.events[day]![index];
              return ScheduleEventTile(
                event: event,
                mode: mode,
              );
            },
          ),
        );
      },
    );
  }
}
