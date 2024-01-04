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
            final bool isAutoThemeMode = settings.themeMode == ThemeMode.system;
            final bool isSystemDarkMode = systemBrightness == Brightness.dark;
            return SwitchListTile.adaptive(
              title: Text('theme_dark'.tr()),
              onChanged: isAutoThemeMode
                  ? null
                  : (bool value) {
                      context.read<SettingsCubit>().toggleThemeMode();
                    },
              value: isAutoThemeMode
                  ? isSystemDarkMode
                  : settings.themeMode == ThemeMode.dark,
              subtitle: Text('theme_dark_desc'.tr()),
            );
          },
        );
      },
    );
  }
}
