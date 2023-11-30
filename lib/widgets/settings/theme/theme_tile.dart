import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeMode currentThemeMode = ref.watch(settingsDataProvider).themeMode;

    return ListTile(
      enabled: currentThemeMode != ThemeMode.system,
      title: const Text("Tryb Ciemny"),
      subtitle: const Text("Przejdź na ciemną stronę mocy"),
      trailing: Switch(
        value: currentThemeMode != ThemeMode.light,
        onChanged: currentThemeMode == ThemeMode.system
            ? null
            : (bool value) {
                if (value) {
                  ref
                      .read(settingsDataProvider.notifier)
                      .setThemeMode(ThemeMode.dark);
                } else {
                  ref
                      .read(settingsDataProvider.notifier)
                      .setThemeMode(ThemeMode.light);
                }
              },
      ),
    );
  }
}
