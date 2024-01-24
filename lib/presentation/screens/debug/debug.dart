import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/new_filter/new_filter.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_picker.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/lesson_tile.dart';
import 'package:silvertimetable/router.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const LessonTile(
            classroom: "3/77",
            comment:
                "Aenean semper quis sem ac feugiat. Aliquam turpis nunc, condimentum vitae viverra sed, mattis at ante. In sed congue eros. Duis posuere congue aliquet. Phasellus eu purus ultricies lacus ornare scelerisque. Sed commodo justo ut felis consequat consequat. Praesent consectetur arcu vel diam pulvinar, vel rutrum eros convallis.",
            groups: ["ISI-1", "ISK", "ZM", "DSA"],
            lecturers: ["Afhdskjf Fhdsk", "Shfhf dsafvvvffff"],
            name: "Analiza Matematyczna 1",
            duration: Duration(minutes: 90),
            startTime: TimeOfDay(hour: 15, minute: 30),
          ),
          AutoThemeModeTile(),
          DarkThemeModeTile(),
          const ThemePicker(),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.welcome),
            child: const Text("Run welcome screen"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewFilterScreen()));
            },
            child: const Text('Show new filter screen'),
          )
        ],
      ),
    );
  }
}
