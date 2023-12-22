import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class AutoThemeModeTile extends StatelessWidget {
  const AutoThemeModeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('theme_auto_dark'.tr()),
      subtitle: Text('theme_auto_dark_desc'.tr()),
      trailing: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, settings) {
          return Switch(
            value: settings.themeMode == ThemeMode.system,
            onChanged: (isTicked) {
              final brightness = SchedulerBinding
                  .instance.platformDispatcher.platformBrightness;

              final value = isTicked
                  ? ThemeMode.system
                  : switch (brightness) {
                      Brightness.dark => ThemeMode.dark,
                      Brightness.light => ThemeMode.light,
                    };

              context.read<SettingsCubit>().changeThemeMode(value);
            },
          );
        },
      ),
    );
  }
}