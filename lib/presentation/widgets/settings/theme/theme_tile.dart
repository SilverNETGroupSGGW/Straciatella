import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/settings/settings_cubit.dart';

class DarkThemeModeTile extends StatelessWidget {
  const DarkThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, settings) {
        return ListTile(
          enabled: settings.themeMode != ThemeMode.system,
          title: Text('theme_dark'.tr()),
          subtitle: Text('theme_dark_desc'.tr()),
          trailing: Switch(
            value: settings.themeMode != ThemeMode.light,
            onChanged: settings.themeMode == ThemeMode.system
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
