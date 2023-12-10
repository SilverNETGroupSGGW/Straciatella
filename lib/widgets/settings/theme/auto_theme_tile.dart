import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';
import 'package:psggw/models/settings_model/settings.dart';

class AutoThemeModeTile extends StatelessWidget {
  const AutoThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Settings settings = context.watch<SettingsBloc>().state.maybeMap(
          loaded: (state) => state.settings,
          orElse: () => Settings.empty(),
        );
    return ListTile(
      title: Text('theme_auto_dark'.tr()),
      subtitle: Text('theme_auto_dark_desc'.tr()),
      trailing: Switch(
        value: settings.themeMode == ThemeMode.system,
        onChanged: (value) {
          SettingsEvent.autoThemeModeChanged(value);
        },
      ),
    );
  }
}
