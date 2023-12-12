import 'package:flutter/material.dart';
import 'package:psggw/presentation/screens/intro_screen/welcome_screen.dart';
import 'package:psggw/presentation/screens/navbar_screen.dart';
import 'package:psggw/presentation/screens/settings_screen.dart';

sealed class RouteNames {
  static const timeline = "/";
  static const welcome = "/welcome";
  static const map = "/map";
  static const settings = "/settings";
}

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => switch (settings.name) {
        RouteNames.timeline => NavBarScreen(index: 0),
        RouteNames.welcome => WelcomeScreen(),
        RouteNames.map => NavBarScreen(index: 1),
        RouteNames.settings => SettingsScreen(),
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
