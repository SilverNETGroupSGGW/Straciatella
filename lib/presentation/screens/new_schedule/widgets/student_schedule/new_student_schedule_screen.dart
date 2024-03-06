import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/schedules_loading.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/widgets/student_schedule_bottom_app_bar.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/widgets/student_schedules_stack.dart';

class NewStudentScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleManagerBloc, ScheduleManagerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('new_filter_title'.tr())),
          body: state.schedulesOptionsTree == null
              ? SchedulesLoading()
              : state.refreshingIndex
                  ? const Column(
                      children: [
                        LinearProgressIndicator(),
                        Spacer(),
                        StudentSchedulesStack(),
                      ],
                    )
                  : const StudentSchedulesStack(),
          bottomNavigationBar: state.schedulesOptionsTree != null
              ? StudentScheduleBottomAppBar()
              : null,
        );
      },
    );
  }
}
