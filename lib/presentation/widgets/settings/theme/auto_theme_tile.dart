import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';

class AutoThemeModeTile extends StatelessWidget {
  const AutoThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('theme_auto_dark'.tr()),
      subtitle: Text('theme_auto_dark_desc'.tr()),
      trailing: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settings) {
          return Switch(
            value: settings.maybeMap(
                  orElse: () => ThemeMode.system,
                  loaded: (settings) => settings.themeMode,
                ) ==
                ThemeMode.system,
            onChanged: (value) {
              context
                  .read<SettingsBloc>()
                  .add(SettingsEvent.autoThemeModeChanged(value));
            },
          );
        },
      ),
    );
  }
}
