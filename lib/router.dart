import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/debug/debug.dart';
import 'package:silvertimetable/presentation/screens/timetable/timetable.dart';
import 'package:silvertimetable/presentation/screens/settings/settings.dart';
import 'package:silvertimetable/presentation/screens/welcome/welcome.dart';

sealed class RouteNames {
  static const timeline = "/";
  static const settings = "/settings";
  static const debug = "/debug";
  static const welcome = "/welcome";
}

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => switch (settings.name) {
        RouteNames.timeline => TimetableScreen(),
        RouteNames.settings => SettingsScreen(),
        RouteNames.debug => DebugScreen(),
        RouteNames.welcome => WelcomeScreen(),
        _ => RouteNotFoundScreen(),
      },
    );
  }
}

class RouteNotFoundScreen extends StatelessWidget {
  const RouteNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("404 Page not found"),
      ),
    );
  }
}
