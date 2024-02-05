import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen_app_bar.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen_body.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_cubit/schedule_events_provider.dart';
import 'package:silvertimetable/presentation/widgets/synced_page_view/synced_page_views.dart';

enum ScheduleViewMode { student, lecturer }

class ScheduleScreenArgs {
  final ScheduleKey scheduleKey;
  const ScheduleScreenArgs(this.scheduleKey);
}

class ScheduleScreen extends StatelessWidget {
  final ScheduleKey scheduleKey;
  final ScheduleViewMode mode;

  static ScheduleScreenArgs args(ScheduleKey key) => ScheduleScreenArgs(key);

  const ScheduleScreen({
    super.key,
    required this.scheduleKey,
    this.mode = ScheduleViewMode.student,
  });

  @override
  Widget build(BuildContext context) {
    return ScheduleEventsProvider(
      scheduleKey: scheduleKey,
      child: BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
        builder: (context, state) {
          if (state.events.isEmpty) {
            return const Scaffold(body: Center(child: Text("no events")));
          }
          return const SyncedPageViews(
            child: Scaffold(
              appBar: ScheduleScreenAppBar(),
              body: ScheduleScreenBody(),
            ),
          );
        },
      ),
    );
  }
}
