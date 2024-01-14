import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class RetroColorSchemeTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return SwitchListTile(
          value: state.themeType == ThemeType.retro,
          title: Text(LocaleKeys.retro_colors.tr()),
          subtitle: Text(LocaleKeys.retro_colors_desc.tr()),
          onChanged: state.themeType != ThemeType.adaptive
              ? (value) {
                  context.read<SettingsCubit>().changeThemeType(
                        value ? ThemeType.retro : ThemeType.custom,
                      );
                }
              : null,
        );
      },
    );
  }
}
