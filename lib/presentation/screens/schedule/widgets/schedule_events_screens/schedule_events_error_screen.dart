import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/presentation/screens/schedule/widgets/settings_icon_button.dart';

class ScheduleEventsErrorScreen extends StatelessWidget {
  const ScheduleEventsErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('schedule'.tr()),
        actions: const [SettingsIconButton()],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(flex: 5),
            const Icon(
              Symbols.error,
              size: 80,
              color: Colors.red,
            ),
            const SizedBox(height: 10),
            Text('error_loading_schedule'.tr()),
            const Spacer(flex: 7),
          ],
        ),
      ),
    );
  }
}
