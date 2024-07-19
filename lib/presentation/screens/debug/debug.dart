import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/fakes/fakes.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/notifier/notifier.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/debug/widgets/go_to_mock_schedule.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/new_schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/lesson/lesson_tile.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_empty_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_error_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_screens/schedule_events_loading_screen.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_picker.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/widgets/category_label.dart';
import 'package:silvertimetable/router.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const CategoryLabel(text: "Theme"),
          TextButton(
            child: const Text('Go to schedule loading screen'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ScheduleEventsCubit(
                    context.read<ScheduleManagerBloc>(),
                    (
                      id: fakeStudyProgramsBase.first.id,
                      type: ScheduleType.studyProgram
                    ),
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
                    (
                      id: fakeStudyProgramsBase.first.id,
                      type: ScheduleType.studyProgram
                    ),
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
                    (
                      id: fakeStudyProgramsBase.first.id,
                      type: ScheduleType.studyProgram
                    ),
                  ),
                  child: const ScheduleEventsEmptyScreen(),
                ),
              ),
            ),
          ),
          AutoThemeModeTile(),
          DarkThemeModeTile(),
          const ThemePicker(),
          const CategoryLabel(text: "Screens"),
          const ShowScheduleErrorScreen(),
          const ShowWelcomeScreen(),
          ShowMockScheduleScreen(
            mockScheduleKey: (
              id: fakeStudyProgramsBase.first.id,
              type: ScheduleType.studyProgram
            ),
          ),
          ShowMockScheduleScreen(
            mockScheduleKey: (
              id: fakeLecturersBase.first.id,
              type: ScheduleType.lecturer
            ),
          ),
          const ShowFilterNewScheduleScreen(),
          const ShowNewLecturerFilterScreen(),
          const CategoryLabel(text: "Toasts"),
          ListTile(
            onTap: () => Notifier.customNotification("Test toast"),
            title: const Text("Show test toast"),
          ),
          const TestToast(),
          const TestToastAdd(),
          const TestToastDelete(),
          const TestToastUpdate(),
          const TestToastUpdates(),
          const TestToastUpdateError(),
        ],
      ),
    );
  }
}

class TestToastUpdateError extends StatelessWidget {
  const TestToastUpdateError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Notifier.showPlanError("Test error"),
      title: const Text("Show plan error toast"),
    );
  }
}

class TestToastUpdates extends StatelessWidget {
  const TestToastUpdates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Notifier.showPlansUpdated(),
      title: const Text("Show plans updated toast"),
    );
  }
}

class TestToastUpdate extends StatelessWidget {
  const TestToastUpdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Notifier.showPlanUpdated(),
      title: const Text("Show plan updated toast"),
    );
  }
}

class TestToastDelete extends StatelessWidget {
  const TestToastDelete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Notifier.showPlanDeleted(),
      title: const Text("Show plan deleted toast"),
    );
  }
}

class TestToastAdd extends StatelessWidget {
  const TestToastAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Notifier.showPlanAdded(),
      title: const Text("Show plan added toast"),
    );
  }
}

class TestToast extends StatelessWidget {
  const TestToast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Notifier.customNotification(
        "Test toast with action",
        action: SnackBarAction(
          label: "Action",
          onPressed: () => Notifier.customNotification("Action pressed"),
        ),
      ),
      title: const Text("Show test toast with action"),
    );
  }
}

// class TestLecturerEventTile extends StatelessWidget {
//   const TestLecturerEventTile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return LessonDataTile(
//       lessonData: LessonData.convertFromSchedule(
//         Lecturer.fromJson(mockLecturer),
//       ).entries.first.value.first,
//       mode: ScheduleViewMode.lecturer,
//     );
//   }
// }

// class TestStudentEventTile extends StatelessWidget {
//   const TestStudentEventTile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return LessonDataTile(
//       lessonData: LessonData.convertFromSchedule(
//         StudyProgram.fromJson(mockSchedule),
//       ).entries.first.value.first,
//     );
//   }
// }

class TestOldLessonTile extends StatelessWidget {
  const TestOldLessonTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use_from_same_package
    return const LessonTile(
      classroom: "3/77",
      comment:
          "Aenean semper quis sem ac feugiat. Aliquam turpis nunc, condimentum vitae viverra sed, mattis at ante. In sed congue eros. Duis posuere congue aliquet. Phasellus eu purus ultricies lacus ornare scelerisque. Sed commodo justo ut felis consequat consequat. Praesent consectetur arcu vel diam pulvinar, vel rutrum eros convallis.",
      groups: ["ISI-1", "ISK", "ZM", "DSA"],
      lecturers: ["Afhdskjf Fhdsk", "Shfhf dsafvvvffff"],
      name: "Analiza Matematyczna 1",
      duration: Duration(minutes: 90),
      startTime: TimeOfDay(hour: 15, minute: 30),
    );
  }
}

class ShowNewLecturerFilterScreen extends StatelessWidget {
  const ShowNewLecturerFilterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewScheduleScreen(
              filterType: ScheduleType.lecturer,
            ),
          ),
        ).then((value) => Notifier.customNotification("Picked: $value"));
      },
      title: const Text('Show new lecturer filter screen'),
    );
  }
}

class ShowFilterNewScheduleScreen extends StatelessWidget {
  const ShowFilterNewScheduleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewScheduleScreen(
              filterType: ScheduleType.studyProgram,
            ),
          ),
        ).then((value) => Notifier.customNotification("Picked: $value"));
      },
      title: const Text('Show new schedule filter screen'),
    );
  }
}

class ShowWelcomeScreen extends StatelessWidget {
  const ShowWelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, RouteNames.welcome),
      title: const Text("Run welcome screen"),
    );
  }
}

class ShowScheduleErrorScreen extends StatelessWidget {
  const ShowScheduleErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ScheduleEventsCubit(
              context.read<ScheduleManagerBloc>(),
              (
                id: fakeStudyProgramsBase.first.id,
                type: ScheduleType.studyProgram
              ),
            ),
            child: const ScheduleEventsErrorScreen(),
          ),
        ),
      ),
      title: const Text('Go to schedule error screen'),
    );
  }
}
