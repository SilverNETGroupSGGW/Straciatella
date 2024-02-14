import 'package:flutter/material.dart';

// TODO: make it nice
/// Screen given schedule is empty and there are no events to display
class ScheduleEventsEmptyScreen extends StatelessWidget {
  const ScheduleEventsEmptyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("no events"),
      ),
    );
  }
}
