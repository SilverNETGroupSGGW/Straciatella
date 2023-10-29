import 'package:flutter/material.dart';
import 'package:psggw/timeline.dart';
import 'package:material_symbols_icons/symbols.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
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
