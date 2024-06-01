import 'package:flutter/material.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/router.dart';

class ShowMockScheduleScreen extends StatelessWidget {
  final ScheduleKey mockScheduleKey;
  const ShowMockScheduleScreen({
    super.key,
    required this.mockScheduleKey,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(
        context,
        RouteNames.schedule,
        arguments: ScheduleScreenArgs(
          mockScheduleKey,
        ),
      ),
      title: Text("go to test ${mockScheduleKey.type}"),
    );
  }
}
