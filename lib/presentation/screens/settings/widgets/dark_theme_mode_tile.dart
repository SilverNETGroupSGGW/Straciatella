import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class DarkThemeModeTile extends StatelessWidget {
  const DarkThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settings) {
        ({bool enabled, bool isDark}) state = switch (settings.themeMode) {
          ThemeMode.system => (enabled: false, isDark: true),
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
                ? null
                : (bool value) {
                    context.read<SettingsCubit>().changeThemeMode(
                          value ? ThemeMode.dark : ThemeMode.light,
                        );
                  },
          ),
        );
      },
    );
  }
}
