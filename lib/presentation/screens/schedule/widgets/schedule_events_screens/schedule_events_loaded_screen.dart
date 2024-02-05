import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_screen_app_bar.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_screen_body.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';

class ScheduleEventsLoadedScreen extends StatelessWidget {
  const ScheduleEventsLoadedScreen({
    super.key,
    required this.refreshing,
  });

  final bool refreshing;

  @override
  Widget build(BuildContext context) {
    return SyncedPageViews(
      child: Scaffold(
        appBar: ScheduleScreenAppBar(
          isRefreshing: refreshing,
        ),
        body: const ScheduleScreenBody(),
      ),
    );
  }
}
