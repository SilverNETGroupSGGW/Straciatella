import 'package:flutter/material.dart';
import 'package:silvertimetable/router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("settings screen"),
          TextButton.icon(
            onPressed: () => Navigator.of(context).pushNamed(RouteNames.debug),
            icon: const Icon(Icons.settings),
            label: const Text("debug screen"),
          ),
        ],
      ),
    );
  }
}
