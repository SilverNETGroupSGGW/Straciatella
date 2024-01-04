import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/auto_color_scheme_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/custom_color_scheme_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/mockup_lesson_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/retro_color_scheme_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/widgets/category_label.dart';
import 'package:silvertimetable/themes.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('customization'.tr()),
            expandedHeight: 196,
          ),
          BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Divider(),
                    CategoryLabel(text: 'preview'.tr()),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MockupLessonTile(),
                    ),
                    const Divider(),
                    CategoryLabel(text: 'theme'.tr()),
                    const AutoThemeModeTile(),
                    const DarkThemeModeTile(),
                    CategoryLabel(text: 'colors'.tr()),
                    const AutoColorSchemeTile(),
                    const RetroColorSchemeTile(),
                    if (state.themeType == ThemeType.custom) const CustomColorSchemeTile() else const SizedBox.shrink(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
