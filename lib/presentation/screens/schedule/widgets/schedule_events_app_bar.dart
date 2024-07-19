import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';

class ScheduleEventsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ScheduleEventsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final ScheduleEventsCubit scheduleEventsCubit =
        context.read<ScheduleEventsCubit>();

    return AppBar(
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
            scheduleEventsCubit.state.schedule?.toString() ?? "Schedule",
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
      actions: const [SettingsIconButton()],
    );
  }
}
