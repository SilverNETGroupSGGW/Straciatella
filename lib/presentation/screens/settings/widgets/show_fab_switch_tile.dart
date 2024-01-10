import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class ShowFabSwitchTile extends StatelessWidget {
  const ShowFabSwitchTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return SwitchListTile.adaptive(
          value: state.isFabHidden,
          title: Text(LocaleKeys.hide_fab.tr()),
          subtitle: Text(LocaleKeys.hide_fab_desc.tr()),
          onChanged: (value) {
            context.read<SettingsCubit>().toggleHideFab();
          },
        );
      },
    );
  }
}
