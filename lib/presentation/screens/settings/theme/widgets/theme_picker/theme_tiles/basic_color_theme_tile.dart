import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/theme_tile.dart';

class BasicColorThemeTile extends StatelessWidget {
  final Color color;
  const BasicColorThemeTile({
    super.key,
    required this.color,
  });

  bool _isThisColorMode(SettingsState settings) {
    return settings.themeType == ThemeType.custom &&
        settings.themeColor == color;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (previous, current) =>
          _isThisColorMode(previous) ^ _isThisColorMode(current),
      builder: (context, settings) {
        return ThemeTile.color(
          color,
          isSelected: _isThisColorMode(settings),
          onPressed: () {
            context.read<SettingsCubit>().changeThemeType(ThemeType.custom);
            context.read<SettingsCubit>().changeThemeColor(color);
          },
        );
      },
    );
  }
}
