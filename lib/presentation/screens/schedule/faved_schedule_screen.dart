import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/presentation/screens/debug/widgets/go_to_mock_lecturer_schedule.dart';
import 'package:silvertimetable/presentation/screens/debug/widgets/go_to_mock_schedule.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_screen.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';

class FavedScheduleScreen extends StatelessWidget {
  const FavedScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavedSchedulesCubit, FavedSchedulesState>(
      builder: (context, state) {
        return state.selectedSchedule == null
            ? const NoFavedSchedule()
            : ScheduleScreen(scheduleKey: state.selectedSchedule!);
      },
    );
  }
}

class NoFavedSchedule extends StatelessWidget {
  const NoFavedSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("no faved schedule selected"),
            SettingsIconButton(),
            ShowMockScheduleScreen(),
            ShowMockLecturerScheduleScreen(),
          ],
        ),
      ),
    );
  }
}
