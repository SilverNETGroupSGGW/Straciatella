import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_picker.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/calendar_page_view/calendar_page_view.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';
import 'package:silvertimetable/router.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firstDay = DateTime.now().subtract(const Duration(days: 7));
    final lastDay = DateTime.now().add(const Duration(days: 14));

    return SyncedPageViews(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Schedule"),
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
