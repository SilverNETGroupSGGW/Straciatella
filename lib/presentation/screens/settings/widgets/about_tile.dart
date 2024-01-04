import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      applicationIcon: const DebugImageSwitch(),
      applicationVersion: appVersion,
      applicationLegalese: '© 2024 Silver .NET',
      aboutBoxChildren: [
        Text('about_app_desc'.tr()),
      ],
    );
  }
}

class DebugImageSwitch extends StatelessWidget {
  const DebugImageSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int debugTapCount = 0;

    // Enable Debug mode when image is tapped 7 times
    return GestureDetector(
      onTap: () {
        debugTapCount++;
        if (debugTapCount == 7) {
          bool newDebug = context.read<SettingsCubit>().toggleDebugMode();
          // Show SnackBar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '${'debug_mode_switched_to'.tr()}: $newDebug',
              ),
              duration: const Duration(seconds: 2),
            ),
          );

          // Reset tap count
          debugTapCount = 0;
        }
      },
      child: Image.asset(
        'assets/images/icon.png',
        width: 64,
        height: 64,
      ),
    );
  }
}
