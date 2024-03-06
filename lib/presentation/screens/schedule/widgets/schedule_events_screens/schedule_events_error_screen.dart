import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/presentation/screens/schedule/schedule_events_cubit/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';

class ScheduleEventsErrorScreen extends StatelessWidget {
  const ScheduleEventsErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final scheduleEventsCubit = context.read<ScheduleEventsCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('schedule'.tr()),
        actions: const [SettingsIconButton()],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(flex: 3),
            Icon(
              errorIcon(scheduleEventsCubit.state.error),
              size: 80,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            Text(errorString(scheduleEventsCubit.state.error)),
            const Spacer(flex: 3),
            ElevatedButton.icon(
              onPressed: () {
                context.read<ScheduleEventsCubit>().refreshFromApi();
              },
              icon: const Icon(Icons.download, size: 18),
              label: Text('retry'.tr()),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  IconData errorIcon(Object? error) {
    if (error is DioExceptionType) {
      return Symbols.wifi_off;
    }
    return Symbols.error;
  }

  String errorString(Object? error) {
    return 'error_loading_schedule'.tr();
  }
}
