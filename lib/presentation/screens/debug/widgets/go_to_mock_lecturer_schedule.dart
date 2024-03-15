import 'package:flutter/material.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/router.dart';

class ShowMockLecturerScheduleScreen extends StatelessWidget {
  const ShowMockLecturerScheduleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(
        context,
        RouteNames.schedule,
        arguments: const ScheduleScreenArgs(
          mockLecturerKey,
        ),
      ),
      title: const Text("go to test lecturer"),
    );
  }
}
