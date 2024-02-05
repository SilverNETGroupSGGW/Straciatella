import 'package:flutter/material.dart';

// TODO: make it nice
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
