import 'package:flutter/material.dart';
import 'dart:async';

import 'package:psggw/timeline.dart';
import 'package:material_symbols_icons/symbols.dart';

void main() {
  runApp(const MainApp());
}

Timer? timer;

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode currentTheme = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Plan Zajęć"),
        ),
        body: const Timeline(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Symbols.view_timeline),
              label: "Plan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.abc),
              label: "Second",
            ),
          ],
        ),
      ),
    );
  }
}
