import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/day/day.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';
import 'package:silvertimetable/logic/schedule_filters/schedule_filters_cubit.dart';
import 'package:silvertimetable/presentation/models/lesson_data/lesson_data_tile/lesson_data_tile.dart';
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
      buildWhen: (previous, current) => previous.schedule != current.schedule,
      builder: (context, scheduleState) {
        final timespan = scheduleState.schedule!.getTimeSpan();
        return CalendarPageView(
          firstDay: timespan != null
              ? DateTime(timespan.$1.year, timespan.$1.month, timespan.$1.day)
              : DateTime.now(),
          lastDay: timespan != null
              ? DateTime(timespan.$2.year, timespan.$2.month, timespan.$2.day)
              : DateTime.now(),
          dayBuilder: (context, controller, day, page) => ListView.builder(
            itemCount: scheduleState.schedule
                    ?.getLessonsDataForDay(
                      Day(day: day.day, month: day.month, year: day.year),
                    )
                    .length ??
                0,
            itemBuilder: (context, index) {
              final event = scheduleState.schedule?.getLessonsDataForDay(
                Day(day: day.day, month: day.month, year: day.year),
              )[index];

              return BlocBuilder<ScheduleFiltersCubit, ScheduleFiltersState>(
                builder: (context, filtersState) {
                  if (event == null || !event.isVisible(filtersState)) {
                    return Container();
                  } else {
                    return LessonDataTile(
                      lessonData: event,
                      mode: mode,
                    );
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}
