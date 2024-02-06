import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/day_dot.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page/day_dot_label.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';
import 'package:silvertimetable/presentation/widgets/page_alignment_coefficient.dart';

class ScheduleScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isRefreshing;
  const ScheduleScreenAppBar({
    super.key,
    required this.isRefreshing,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 60);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
      buildWhen: (previous, current) => previous.events != current.events,
      builder: (context, state) {
        final firstDay =
            state.events.keys.reduce((d0, d1) => d0.isBefore(d1) ? d0 : d1);
        final lastDay =
            state.events.keys.reduce((d0, d1) => d0.isAfter(d1) ? d0 : d1);
        return AppBar(
          title: Text(state.fromSchedule?.toPrettyString() ?? "Schedule"),
          actions: [
            if (isRefreshing) const CircularProgressIndicator(),
            const SettingsIconButton(),
          ],
          bottom: CalendarPagePicker(
            firstDay: firstDay,
            lastDay: lastDay,
            dayBuilder: (context, controller, day, page) {
              return PageAlignmentCoefficient(
                builder: (context, t) {
                  return DayDot(
                    day: day,
                    t: t,
                    hasEvents: state.events.containsKey(day),
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
                      hasEvents: state.events.containsKey(day),
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
