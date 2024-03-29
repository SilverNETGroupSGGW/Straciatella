import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/debug/debug.dart';
import 'package:silvertimetable/presentation/screens/schedule/faved_schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/settings/settings.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/theme.dart';
import 'package:silvertimetable/presentation/screens/welcome/welcome.dart';

sealed class RouteNames {
  static const faved = "/";
  static const schedule = "/schedule";
  static const settings = "/settings";
  static const debug = "/debug";
  static const welcome = "/welcome";
  static const theme = "/settings/theme";
}

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.horizontal,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return switch (settings.name) {
          RouteNames.faved => const FavedScheduleScreen(),
          RouteNames.schedule => ScheduleScreen(
              scheduleKey:
                  (settings.arguments! as ScheduleScreenArgs).scheduleKey,
            ),
          RouteNames.settings => SettingsScreen(),
          RouteNames.debug => const DebugScreen(),
          RouteNames.welcome => WelcomeScreen(),
          RouteNames.theme => ThemeScreen(),
          _ => const RouteNotFoundScreen(),
        };
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
