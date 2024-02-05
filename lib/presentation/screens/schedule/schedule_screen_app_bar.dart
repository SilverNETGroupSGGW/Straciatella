import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/day_dot.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/day_dot_label.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/widgets/page_alignment_coefficient.dart';
import 'package:silvertimetable/router.dart';

class ScheduleScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ScheduleScreenAppBar({
    super.key,
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
            IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteNames.settings),
              icon: const Icon(Icons.settings),
            ),
          ],
          bottom: CalendarPagePicker(
            firstDay: firstDay,
            lastDay: lastDay,
            dayBuilder: (context, controller, day, page) {
              return PageAlignmentCoefficient(
                builder: (context, t) {
                  return DayDot(day: day, t: t);
                },
                pageController: controller,
                page: page,
                error: 0.8,
              );
            },
            dayLabelBuilder: (context, controller, day, page) {
              return PageAlignmentCoefficient(
                builder: (context, t) {
                  return DayDotLabel(day: day, t: t);
                },
                pageController: controller,
                page: page,
                error: 0.1,
              );
            },
          ),
        );
      },
    );
  }
}
