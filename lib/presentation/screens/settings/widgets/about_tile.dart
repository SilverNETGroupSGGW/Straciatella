import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("about_app_title".tr()),
      onTap: () => PackageInfo.fromPlatform().then(
        (PackageInfo info) => showAboutDialog(
          context: context,
          applicationIcon: const DebugImageSwitch(),
          applicationVersion: "v${info.version}",
          applicationLegalese: '© ${DateTime.now().year} Silver .NET',
          applicationName: "appname".tr().capitalize,
          children: [
            Text(
              LocaleKeys.about_app_desc.tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Divider(),
            Text(
              "created_by".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Bartosz Matyjasiak"),
            const Text("Jakub Orchowski"),
            const Text("Bartosz Kwaśny"),
            const SizedBox(
              height: 10,
            ),
            const Text("Maciej Maj"),
            const Text("Michał Kocisz"),
            const Text("Wiktor El Attar"),
            const Text("Marcin Lewandowski"),
            const Text("Paweł Kaczorowski"),
            const Divider(),
            Text(
              'kontakt@silver.sggw.pl',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
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
              LocaleKeys.about.tr(),
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
