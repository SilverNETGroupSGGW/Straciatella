import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        return switch ((snapshot.connectionState, snapshot.hasData)) {
          (ConnectionState.done, true) => AboutListTile(
              applicationIcon: const DebugImageSwitch(),
              applicationVersion:
                  "v${snapshot.data!.version}+${snapshot.data!.buildNumber}",
              applicationLegalese: '© ${DateTime.now().year} Silver .NET',
              applicationName: snapshot.data!.appName,
              aboutBoxChildren: [
                Text('about_app_desc'.tr()),
              ],
            ),
          (_, _) => Container(),
        };
      },
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
    return BlocListener<SettingsCubit, SettingsState>(
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '${'debug_mode_switched_to'.tr()}: ${state.isDebugMode}',
            ),
            duration: const Duration(seconds: 2),
          ),
        );
        debugTapCount = 0;
      },
      listenWhen: (previous, current) =>
          previous.isDebugMode != current.isDebugMode,
      child: GestureDetector(
        onTap: () {
          debugTapCount++;
          if (debugTapCount == 7) {
            context.read<SettingsCubit>().toggleDebugMode();
          }
        },
        child: Image.asset(
          'assets/images/icon.png',
          width: 64,
          height: 64,
        ),
      ),
    );
  }
}
