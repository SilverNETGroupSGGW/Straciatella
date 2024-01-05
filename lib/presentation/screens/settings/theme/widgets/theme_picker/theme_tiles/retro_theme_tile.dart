import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/theme_tile.dart';

class RetroThemeTile extends StatelessWidget {
  const RetroThemeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<SettingsCubit, SettingsState>(
          buildWhen: (previous, current) =>
              switch ((previous.themeType, current.themeType)) {
            // theme type changed to or from retro
            (ThemeType.retro, != ThemeType.retro) => true,
            (!= ThemeType.retro, ThemeType.retro) => true,
            // otherwise dot rebuild this widget
            (_, _) => false,
          },
          builder: (context, settings) {
            return ThemeTile(
              isSelected: settings.themeType == ThemeType.retro,
              onPressed: () => context
                  .read<SettingsCubit>()
                  .changeThemeType(ThemeType.retro),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black12,
                      Colors.black12,
                      Colors.red,
                      Colors.red,
                    ],
                    stops: [0, 0.5, 0.5, 1],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            );
          },
        ),
        const Text("retro"),
      ],
    );
  }
}
