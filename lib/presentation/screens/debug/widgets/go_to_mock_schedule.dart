import 'package:flutter/material.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/router.dart';

class GoToMockSchedule extends StatelessWidget {
  const GoToMockSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(
        context,
        RouteNames.schedule,
        arguments: const ScheduleScreenArgs(
          mockScheduleKey,
        ),
      ),
      child: const Text("go to test schedule"),
    );
  }
}
