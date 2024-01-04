import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class AutoColorSchemeTile extends StatelessWidget {
  const AutoColorSchemeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return SwitchListTile.adaptive(
          value: state.themeType == ThemeType.adaptive,
          title: Text('dynamic_colors'.tr()),
          subtitle: Text('dynamic_colors_desc'.tr()),
          onChanged: (value) {
            context.read<SettingsCubit>().changeThemeType(
                  value ? ThemeType.adaptive : ThemeType.custom,
                );
          },
        );
      },
    );
  }
}
