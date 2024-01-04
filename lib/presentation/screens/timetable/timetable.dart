import 'package:flutter/material.dart';
import 'package:silvertimetable/router.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.filled(
            onPressed: () =>
                Navigator.of(context).pushNamed(RouteNames.settings),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: const Text("home screen"),
    );
  }
}
