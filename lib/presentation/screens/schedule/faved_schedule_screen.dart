import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/fakes/mock_jsons.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';
import 'package:silvertimetable/router.dart';

class FavedScheduleScreen extends StatelessWidget {
  const FavedScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavedSchedulesCubit, FavedSchedulesState>(
      builder: (context, state) {
        return state.selectedSchedule == null
            ? Scaffold(
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("no faved schedule selected"),
                      const SettingsIconButton(),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          RouteNames.schedule,
                          arguments: const ScheduleScreenArgs(
                            mockScheduleKey,
                          ),
                        ),
                        child: const Text("go to test schedule"),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          RouteNames.schedule,
                          arguments: const ScheduleScreenArgs(
                            mockLecturerKey,
                          ),
                        ),
                        child: const Text("go to test lecturer"),
                      ),
                    ],
                  ),
                ),
              )
            : ScheduleScreen(scheduleKey: state.selectedSchedule!);
      },
    );
  }
}
