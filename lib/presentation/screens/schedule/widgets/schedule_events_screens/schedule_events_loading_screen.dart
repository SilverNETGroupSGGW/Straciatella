import 'package:flutter/material.dart';

// TODO: make it nice
class ScheduleEventsLoadingScreen extends StatelessWidget {
  const ScheduleEventsLoadingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
