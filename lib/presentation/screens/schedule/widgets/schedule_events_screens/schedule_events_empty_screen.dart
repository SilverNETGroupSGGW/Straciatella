import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/schedule_events_app_bar.dart';

/// Screen given schedule is empty and there are no events to display
class ScheduleEventsEmptyScreen extends StatelessWidget {
  const ScheduleEventsEmptyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScheduleEventsAppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(flex: 7),
            const Icon(
              Symbols.event_busy,
              color: Colors.grey,
              size: 80,
            ),
            const SizedBox(height: 20),
            Text('${"no_events_in_schedule".tr()}.'),
            const Spacer(flex: 5),
            ElevatedButton.icon(
              onPressed: () {
                context.read<ScheduleEventsCubit>().refreshFromApi();
              },
              icon: const Icon(
                Icons.refresh,
                size: 20,
              ),
              label: Text('refresh'.tr()),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
