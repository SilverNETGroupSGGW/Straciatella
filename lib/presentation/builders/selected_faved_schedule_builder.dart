import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/logic/faved_schedules/faved_schedules_cubit.dart';
import 'package:silvertimetable/presentation/builders/cached_schedule_builder.dart';

class SelectedFavedScheduleBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    ExtendedSchedule? schedule,
  ) builder;

  const SelectedFavedScheduleBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavedSchedulesCubit, FavedSchedulesState>(
      builder: (context, favedSchedules) {
        if (favedSchedules.selectedSchedule == null) {
          return builder(context, null);
        } else {
          return CachedScheduleBuilder(
            builder: builder,
            scheduleKey: favedSchedules.selectedSchedule!,
          );
        }
      },
    );
  }
}
