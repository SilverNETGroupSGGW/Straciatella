import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
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
        title: Column(
          crossAxisAlignment: (!kIsWeb && Platform.isIOS)
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Text(
              'schedule'.tr(),
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              scheduleEventsCubit.state.fromSchedule!.toPrettyString(),
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: const [SettingsIconButton()],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(flex: 7),
            Icon(
              errorIcon(scheduleEventsCubit.state.error),
              size: 80,
              color: Colors.amber,
            ),
            const SizedBox(height: 20),
            Text(
              errorString(scheduleEventsCubit.state.error),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 5),
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
    if (error is DioExceptionType) {
      return '${'error_loading_schedule'.tr()}.\n${'check_internet_connection'.tr()}.';
    }
    return '${'error_loading_schedule'.tr()}.';
  }
}
