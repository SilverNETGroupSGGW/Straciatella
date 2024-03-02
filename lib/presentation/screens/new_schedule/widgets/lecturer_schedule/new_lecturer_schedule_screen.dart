import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/widgets/lecturer_schedule_bottom_app_bar.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/widgets/lecturer_schedule_text_field.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/lecturer_schedule/widgets/lecturer_schedules_list.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/schedules_loading.dart';

class NewLecturerScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LecturerScheduleTextField(),
      ),
      body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, state) {
          if (state.schedulesIndex.isEmpty) {
            return SchedulesLoading();
          }
          if (state.refreshingIndex) {
            return const Stack(
              children: [
                LinearProgressIndicator(),
                LecturerSchedulesList(),
              ],
            );
          }
          return const LecturerSchedulesList();
        },
      ),
      bottomNavigationBar: LecturerScheduleBottomAppBar(),
    );
  }
}
