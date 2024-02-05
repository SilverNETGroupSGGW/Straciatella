import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_view.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/widgets/page_alignment_coefficient.dart';

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
        final firstDay =
            state.events.keys.reduce((d0, d1) => d0.isBefore(d1) ? d0 : d1);
        final lastDay =
            state.events.keys.reduce((d0, d1) => d0.isAfter(d1) ? d0 : d1);
        return CalendarPageView(
          firstDay: firstDay,
          lastDay: lastDay,
          dayBuilder: (context, controller, day, page) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("View: $page"),
                PageAlignmentCoefficient(
                  pageController: controller,
                  page: page,
                  error: 0.1,
                  builder: (context, coefficient) => coefficient > 0
                      ? const Text(
                          "IS ALIGNED",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const Text(
                          "NOT ALIGNED",
                          style: TextStyle(color: Colors.red),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
