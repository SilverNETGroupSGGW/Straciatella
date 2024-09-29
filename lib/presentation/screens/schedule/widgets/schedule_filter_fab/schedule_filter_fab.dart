import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_filter_fab/schedule_filter_option.dart';

class ScheduleFilterFab extends StatelessWidget {
  const ScheduleFilterFab({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandableFab(
      type: ExpandableFabType.up,
      childrenAnimation: ExpandableFabAnimation.none,
      distance: 70,
      overlayStyle: ExpandableFabOverlayStyle(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.9),
      ),
      openCloseStackAlignment: Alignment.centerLeft,
      children: const [
        ScheduleFilterOption(ScheduleFilter.studyProgram),
        ScheduleFilterOption(ScheduleFilter.semester),
        ScheduleFilterOption(ScheduleFilter.group),
      ],
    );
  }
}
