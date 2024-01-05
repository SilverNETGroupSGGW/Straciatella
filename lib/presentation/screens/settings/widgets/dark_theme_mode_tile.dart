import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/widgets/platform_brightness_builder.dart';

class DarkThemeModeTile extends StatelessWidget {
  const DarkThemeModeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformBrightnessBuilder(
      builder: (context, systemBrightness) {
        return BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, settings) {
            final ({bool enabled, bool isDark}) state =
                switch (settings.themeMode) {
              ThemeMode.system => (
                  enabled: false,
                  isDark: systemBrightness == Brightness.dark
                ),
              ThemeMode.dark => (enabled: true, isDark: true),
              ThemeMode.light => (enabled: true, isDark: false),
            };
            return ListTile(
              enabled: state.enabled,
              title: Text('theme_dark'.tr()),
              subtitle: Text('theme_dark_desc'.tr()),
              trailing: Switch(
                value: state.isDark,
                onChanged: state.enabled
                    ? (bool value) {
                        context.read<SettingsCubit>().changeThemeMode(
                              value ? ThemeMode.dark : ThemeMode.light,
                            );
                      }
                    : null,
              ),
            );
          },
        );
      },
    );
  }
}
