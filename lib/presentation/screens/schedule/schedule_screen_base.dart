import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_view.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';
import 'package:silvertimetable/router.dart';

enum ScheduleViewMode { student, lecturer }

class ScheduleScreenBase extends StatelessWidget {
  final Map<DateTime, List<ScheduleEvent>> events;
  final ScheduleViewMode mode;
  final Widget? title;
  const ScheduleScreenBase({
    super.key,
    required this.events,
    required this.mode,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final firstDay = events.keys.reduce((d0, d1) => d0.isBefore(d1) ? d0 : d1);
    final lastDay = events.keys.reduce((d0, d1) => d0.isAfter(d1) ? d0 : d1);

    return SyncedPageViews(
      child: Scaffold(
        appBar: AppBar(
          title: title,
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
          ),
        ),
        body: CalendarPageView(
          firstDay: firstDay,
          lastDay: lastDay,
        ),
      ),
    );
  }
}
