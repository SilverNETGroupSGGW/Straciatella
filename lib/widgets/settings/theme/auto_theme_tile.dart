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
      title: const Text("Automatyczny Tryb Ciemny"),
      subtitle: const Text("Ustawia tryb na podstawie ustawień systemowych"),
      trailing: Switch(
        value: currentThemeSettings == ThemeMode.system,
        onChanged: ref.read(settingsDataProvider.notifier).switchAutoThemeMode,
      ),
    );
  }
}
