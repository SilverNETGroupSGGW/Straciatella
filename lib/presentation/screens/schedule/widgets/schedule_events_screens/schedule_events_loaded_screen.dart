import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_screen_app_bar.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_screen_body.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_filter_fab/schedule_filter_fab.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';

/// Screen when events of a given schedule are loaded and can be displayed
class ScheduleEventsLoadedScreen extends StatelessWidget {
  const ScheduleEventsLoadedScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SyncedPageViews(
      child: Scaffold(
        appBar: const ScheduleScreenAppBar(),
        body: const ScheduleScreenBody(),
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: const ScheduleFilterFab(),
      ),
    );
  }
}
