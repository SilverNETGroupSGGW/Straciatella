import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';

/// Screen when events of a given schedule are being fetched from api
class ScheduleEventsLoadingScreen extends StatelessWidget {
  const ScheduleEventsLoadingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
