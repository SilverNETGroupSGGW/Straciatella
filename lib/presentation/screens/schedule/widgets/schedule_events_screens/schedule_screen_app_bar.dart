import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/day/day.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/day_dot.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/day_dot_label.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_refreshing_indicator.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';
import 'package:silvertimetable/presentation/widgets/page_alignment_coefficient.dart';

class ScheduleScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ScheduleScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 60);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
      buildWhen: (previous, current) => previous.schedule != current.schedule,
      builder: (context, state) {
        final timespan = state.schedule?.getTimeSpan();
        return AppBar(
          title: Text(state.schedule?.toString() ?? "Schedule"),
          actions: const [
            ScheduleEventsRefreshingIndicator(),
            SettingsIconButton(),
          ],
          bottom: CalendarPagePicker(
            firstDay: timespan != null
                ? DateTime(timespan.$1.year, timespan.$1.month, timespan.$1.day)
                : DateTime.now(),
            lastDay: timespan != null
                ? DateTime(timespan.$2.year, timespan.$2.month, timespan.$2.day)
                : DateTime.now(),
            dayBuilder: (context, controller, day, page) {
              return PageAlignmentCoefficient(
                builder: (context, t) {
                  return DayDot(
                    day: day,
                    t: t,
                    hasEvents: state.schedule
                            ?.getLessonsDataForDay(
                              Day(
                                day: day.day,
                                month: day.month,
                                year: day.year,
                              ),
                            )
                            .isNotEmpty ??
                        false,
                  );
                },
                pageController: controller,
                page: page,
                errorMargin: 0.8,
              );
            },
            dayLabelBuilder: (context, controller, day, page) {
              return PageAlignmentCoefficient(
                builder: (context, t) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 2.0,
                    ),
                    child: DayDotLabel(
                      day: day,
                      t: t,
                      hasEvents: state.schedule
                              ?.getLessonsDataForDay(
                                Day(
                                  day: day.day,
                                  month: day.month,
                                  year: day.year,
                                ),
                              )
                              .isNotEmpty ??
                          false,
                    ),
                  );
                },
                pageController: controller,
                page: page,
                errorMargin: 0.1,
              );
            },
          ),
        );
      },
    );
  }
}
