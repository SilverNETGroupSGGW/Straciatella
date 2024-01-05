import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/theme_tile.dart';

class AdaptiveThemeTile extends StatelessWidget {
  const AdaptiveThemeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<SettingsCubit, SettingsState>(
          buildWhen: (previous, current) =>
              switch ((previous.themeType, current.themeType)) {
            // theme type changed to or from adaptive
            (ThemeType.adaptive, != ThemeType.adaptive) => true,
            (!= ThemeType.adaptive, ThemeType.adaptive) => true,
            // otherwise dot rebuild this widget
            (_, _) => false,
          },
          builder: (context, settings) {
            return ThemeTile(
              isSelected: settings.themeType == ThemeType.adaptive,
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
        Text("adaptive".tr()),
      ],
    );
  }
}
