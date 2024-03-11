import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/schedule/schedule.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/presentation/screens/debug/widgets/go_to_mock_lecturer_schedule.dart';
import 'package:silvertimetable/presentation/screens/debug/widgets/go_to_mock_schedule.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/new_schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/lesson/lesson_tile.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_empty_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_error_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_loading_screen.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_picker.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/router.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          TextButton(
            child: const Text('Go to schedule loading screen'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ScheduleEventsCubit(
                    context.read<ScheduleManagerBloc>(),
                    mockScheduleKey,
                  ),
                  child: const ScheduleEventsLoadingScreen(),
                ),
              ),
            ),
          ),
          TextButton(
            child: const Text('Go to schedule events error screen'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ScheduleEventsCubit(
                    context.read<ScheduleManagerBloc>(),
                    mockScheduleKey,
                  ),
                  child: const ScheduleEventsErrorScreen(),
                ),
              ),
            ),
          ),
          TextButton(
            child: const Text('Go to schedule events empty screen'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ScheduleEventsCubit(
                    context.read<ScheduleManagerBloc>(),
                    mockScheduleKey,
                  ),
                  child: const ScheduleEventsEmptyScreen(),
                ),
              ),
            ),
          ),
          AutoThemeModeTile(),
          DarkThemeModeTile(),
          const ThemePicker(),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.welcome),
            child: const Text("Run welcome screen"),
          ),
          const GoToMockSchedule(),
          const GoToMockLecturerSchedule(),
          const Text("Pierwszy concept by Kuba"),
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
          ScheduleEventTile(
            event: ScheduleEvent.convertFromSchedule(
              Schedule.fromJson(mockSchedule),
            ).entries.first.value.first,
          ),
          ScheduleEventTile(
            event: ScheduleEvent.convertFromSchedule(
              Lecturer.fromJson(mockLecturer),
            ).entries.first.value.first,
            mode: ScheduleViewMode.lecturer,
          ),
          const GoToMockSchedule(),
          const GoToMockLecturerSchedule(),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewScheduleScreen(
                    filterType: ScheduleType.schedule,
                  ),
                ),
              ).then((value) => toast("Picked: $value"));
            },
            child: const Text('Show new schedule filter screen'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewScheduleScreen(
                    filterType: ScheduleType.lecturer,
                  ),
                ),
              ).then((value) => toast("Picked: $value"));
            },
            child: const Text('Show new lecturer filter screen'),
          ),
        ],
      ),
    );
  }
}
