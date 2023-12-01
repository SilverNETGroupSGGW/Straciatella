import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class AutoThemeSwitcher extends ConsumerWidget {
  const AutoThemeSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeMode currentThemeSettings = ref.watch(settingsDataProvider).themeMode;
    return ListTile(
      title: Text('theme_auto_dark'.tr()),
      subtitle: Text('theme_auto_dark_desc'.tr()),
      trailing: Switch(
        value: currentThemeSettings == ThemeMode.system,
        onChanged: ref.read(settingsDataProvider.notifier).switchAutoThemeMode,
      ),
    );
  }
}
