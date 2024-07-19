import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';

class ScheduleEventsRefreshingIndicator extends StatelessWidget {
  const ScheduleEventsRefreshingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        } else {
          return Container();
        }
      },
    );
  }
}
