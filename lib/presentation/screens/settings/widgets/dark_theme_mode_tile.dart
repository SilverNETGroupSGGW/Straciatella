import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/builders/platform_brightness_builder.dart';

class DarkThemeModeTile extends StatelessWidget {
  const DarkThemeModeTile({super.key});

  void onChanged(bool value, BuildContext context) {
    context.read<SettingsCubit>().changeThemeMode(
          value ? ThemeMode.dark : ThemeMode.light,
        );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformBrightnessBuilder(
      builder: (context, systemBrightness) {
        return BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, settings) {
            final ({bool enabled, bool isDark}) switchState =
                switch (settings.themeMode) {
              ThemeMode.system => (
                  enabled: false,
                  isDark: systemBrightness == Brightness.dark
                ),
              ThemeMode.dark => (enabled: true, isDark: true),
              ThemeMode.light => (enabled: true, isDark: false),
            };

            return SwitchListTile.adaptive(
              title: Text(LocaleKeys.theme_dark.tr()),
              subtitle: Text(LocaleKeys.theme_dark_desc.tr()),
              onChanged: switchState.enabled
                  ? (bool value) => onChanged(value, context)
                  : null,
              value: switchState.isDark,
            );
          },
        );
      },
    );
  }
}
