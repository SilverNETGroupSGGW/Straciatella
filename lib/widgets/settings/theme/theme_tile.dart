import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/notifiers/settings_provider.dart';

class DarkThemeModeTile extends ConsumerWidget {
  const DarkThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeMode currentThemeMode = ref.watch(settingsProvider).themeMode;

    return ListTile(
      enabled: currentThemeMode != ThemeMode.system,
      title: Text('theme_dark'.tr()),
      subtitle: Text('theme_dark_desc'.tr()),
      trailing: Switch(
        value: currentThemeMode != ThemeMode.light,
        onChanged: currentThemeMode == ThemeMode.system
            ? null
            : (bool value) {
                if (value) {
                  ref
                      .read(settingsProvider.notifier)
                      .setThemeMode(ThemeMode.dark);
                } else {
                  ref
                      .read(settingsProvider.notifier)
                      .setThemeMode(ThemeMode.light);
                }
              },
      ),
    );
  }
}
