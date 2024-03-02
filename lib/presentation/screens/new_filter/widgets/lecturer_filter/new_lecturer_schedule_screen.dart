import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/filters_loading.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_bottom_app_bar.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_schedules_list.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_text_field.dart';

class NewLecturerScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LecturerTextField(),
      ),
      body: BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
        builder: (context, state) {
          if (state.schedulesIndex.isEmpty) {
            return FiltersLoading();
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
      bottomNavigationBar: LecturerBottomAppBar(),
    );
  }
}
