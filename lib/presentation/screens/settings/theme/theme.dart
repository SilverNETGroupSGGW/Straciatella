import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/mockup_lesson_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_picker.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/widgets/category_label.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(LocaleKeys.customization.tr()),
            expandedHeight: 196,
          ),
          SliverList.list(
            children: [
              CategoryLabel(text: LocaleKeys.preview.tr()),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Transform.scale(
                  scale: 0.8,
                  child: Column(
                    children: [
                      MockupLessonTile(),
                      MockupLessonTile(),
                    ],
                  ),
                ),
              ),
              CategoryLabel(text: LocaleKeys.theme.tr()),
              AutoThemeModeTile(),
              DarkThemeModeTile(),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ThemePicker(),
                ),
              ),
            ],
          ),
          // Allows showing collapsed app bar if height of the screen between
          // causes title to be hidden by the app bar
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
