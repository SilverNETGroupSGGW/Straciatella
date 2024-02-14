import 'package:flutter/material.dart';

// TODO: make it nice
/// Screen when events of a given schedule are being fetched from api
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
