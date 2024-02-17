import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

// TODO: make it nice
class ScheduleEventsErrorScreen extends StatelessWidget {
  const ScheduleEventsErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Symbols.error,
              color: Colors.red,
              size: 30,
            ),
            Text("Error loading events"),
          ],
        ),
      ),
    );
  }
}
