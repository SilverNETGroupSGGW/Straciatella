import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/theme_tile.dart';

class AdaptiveThemeTile extends StatelessWidget {
  const AdaptiveThemeTile({super.key});

  bool _isThisThemeType(SettingsState settings) {
    return settings.themeType == ThemeType.adaptive;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<SettingsCubit, SettingsState>(
          buildWhen: (previous, current) =>
              _isThisThemeType(previous) ^ _isThisThemeType(current),
          builder: (context, settings) {
            return ThemeTile(
              isSelected: _isThisThemeType(settings),
              onPressed: () => context
                  .read<SettingsCubit>()
                  .changeThemeType(ThemeType.adaptive),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: SweepGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                      Colors.purple,
                      Colors.red,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Text("adaptive".tr().capitalize),
      ],
    );
  }
}
