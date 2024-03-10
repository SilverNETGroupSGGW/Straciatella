import 'package:flutter/material.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/router.dart';

class ShowMockScheduleScreen extends StatelessWidget {
  const ShowMockScheduleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(
        context,
        RouteNames.schedule,
        arguments: const ScheduleScreenArgs(
          mockScheduleKey,
        ),
      ),
      title: const Text("go to test schedule"),
    );
  }
}
