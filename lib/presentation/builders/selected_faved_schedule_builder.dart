import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/presentation/builders/schedule_manager_builders/schedule_manager_schedule_builder.dart';

class SelectedFavedScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ExtendedSchedule? schedule,
    bool isLoading,
  ) builder;

  const SelectedFavedScheduleBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavedSchedulesCubit, FavedSchedulesState>(
      builder: (context, favedState) {
        if (favedState.selectedSchedule == null) {
          return builder(context, null, false);
        }
        return ScheduleManagerScheduleBuilder(
          scheduleKey: favedState.selectedSchedule!,
          builder: builder,
        );
      },
    );
  }
}
