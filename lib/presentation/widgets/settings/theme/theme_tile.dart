import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';

class DarkThemeModeTile extends StatelessWidget {
  const DarkThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeMode currentThemeMode = context.select(
      (SettingsBloc bloc) => bloc.state.maybeMap(
        loaded: (state) => state.themeMode,
        orElse: () => ThemeMode.system,
      ),
    );

    return ListTile(
      enabled: currentThemeMode != ThemeMode.system,
      title: Text('theme_dark'.tr()),
      subtitle: Text('theme_dark_desc'.tr()),
      trailing: Switch(
        value: currentThemeMode != ThemeMode.light,
        onChanged: currentThemeMode == ThemeMode.system
            ? null
            : (bool value) {
                SettingsEvent.darkThemeModeChanged(
                  themeMode: value ? ThemeMode.dark : ThemeMode.light,
                );
              },
      ),
    );
  }
}
