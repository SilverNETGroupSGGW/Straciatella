import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/themes.dart';

class ThemeTypeButtons extends StatelessWidget {
  const ThemeTypeButtons({
    super.key,
    required this.selected,
  });

  final ThemeType selected;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: ThemeType.values
          .map(
            (e) => ButtonSegment(
              value: e,
              label: Text(e.name.tr()),
            ),
          )
          .toList(),
      selected: {selected},
      onSelectionChanged: (p0) {
        context.read<SettingsCubit>().changeThemeType(p0.first);
      },
    );
  }
}
