import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:silvertimetable/presentation/screens/debug/debug.dart';
import 'package:silvertimetable/presentation/screens/settings/settings.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/theme.dart';
import 'package:silvertimetable/presentation/screens/timetable/timetable.dart';
import 'package:silvertimetable/presentation/screens/welcome/welcome.dart';

sealed class RouteNames {
  static const timeline = "/";
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
        return AutoScalePageWrapper(
          child: switch (settings.name) {
            RouteNames.timeline => const TimetableScreen(),
            RouteNames.settings => SettingsScreen(),
            RouteNames.debug => const DebugScreen(),
            RouteNames.welcome => WelcomeScreen(),
            RouteNames.theme => ThemeScreen(),
            _ => const RouteNotFoundScreen(),
          },
        );
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

class AutoScalePageWrapper extends StatelessWidget {
  final Widget child;
  const AutoScalePageWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      maxWidth: 1200,
      background: Container(color: const Color(0xFFF5F5F5)),
      child: ResponsiveScaledBox(
        width: ResponsiveValue<double>(
          context,
          conditionalValues: [
            Condition.equals(name: MOBILE, value: 450),
            Condition.between(start: 800, end: 1100, value: 800),
            Condition.between(start: 1000, end: 1200, value: 1000),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ],
        ).value,
        child: BouncingScrollWrapper.builder(
          context,
          child,
          dragWithMouse: true,
        ),
      ),
    );
  }
}
