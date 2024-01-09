import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/presentation/builders/schedule_manager_builders/schedule_manager_schedule_builder.dart';

/// Use this builder to render currently selected faved schedule
///
/// If extendedSchedule is null => there is no data of this schedules in cache (need to perform an update) \
/// If baseSchedule is null then this schedule is most likely deleted or hidden from view
class SelectedFavedScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    BaseSchedule? baseSchedule,
    ExtendedSchedule? extendedSchedule,
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
          return builder(context, null, null);
        }
        return ScheduleManagerScheduleBuilder(
          scheduleKey: favedState.selectedSchedule!,
          builder: builder,
        );
      },
    );
  }
}
