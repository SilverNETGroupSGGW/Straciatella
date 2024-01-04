import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/debug/debug.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/theme.dart';
import 'package:silvertimetable/presentation/screens/timetable/timetable.dart';
import 'package:silvertimetable/presentation/screens/settings/settings.dart';

sealed class RouteNames {
  static const timeline = "/";
  static const settings = "/settings";
  static const debug = "/debug";
  static const theme = "/settings/theme";
}

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => switch (settings.name) {
        RouteNames.timeline => const TimetableScreen(),
        RouteNames.settings => const SettingsScreen(),
        RouteNames.debug => const DebugScreen(),
        RouteNames.theme => const ThemeScreen(),
        _ => const RouteNotFoundScreen(),
      },
    );
  }
}

class RouteNotFoundScreen extends StatelessWidget {
  const RouteNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("404 Page not found"),
      ),
    );
  }
}
