import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_app_bar.dart';

/// Screen when events of a given schedule are being fetched from api
class ScheduleEventsLoadingScreen extends StatefulWidget {
  const ScheduleEventsLoadingScreen({
    super.key,
  });

  @override
  State<ScheduleEventsLoadingScreen> createState() =>
      _ScheduleEventsLoadingScreenState();
}

class _ScheduleEventsLoadingScreenState
    extends State<ScheduleEventsLoadingScreen> {
  String fancyLoadingDots = '';
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(milliseconds: 500),
      (timer) {
        setState(() {
          timer.tick % 4 == 0 ? fancyLoadingDots = '' : fancyLoadingDots += '.';
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleEventsCubit, ScheduleEventsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const ScheduleEventsAppBar(),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 20),
                Text(
                  '${'loading_schedule'.tr()}$fancyLoadingDots',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
