import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/timetable/widgets/lesson_tile.dart';
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
            title: Text('theme_screen'.tr()),
            expandedHeight: 196,
          ),
          BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Divider(),
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
                    state.themeType == ThemeType.custom
                        ? const CustomColorSchemeTile()
                        : const SizedBox.shrink(),
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

class CustomColorSchemeTile extends StatelessWidget {
  const CustomColorSchemeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return ExpansionTile(
          title: Text('custom_color'.tr()),
          subtitle: Text('custom_color_desc'.tr()),
          children: [
            ColorPicker(
              borderRadius: 12,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              hasBorder: false,
              height: 80,
              width: 80,
              pickersEnabled: const {
                ColorPickerType.primary: false,
                ColorPickerType.accent: true,
                ColorPickerType.bw: false,
                ColorPickerType.custom: false,
                ColorPickerType.wheel: false,
              },
              spacing: 12,
              runSpacing: 12,
              color: state.themeColor,
              enableShadesSelection: false,
              onColorChanged: (value) {
                context.read<SettingsCubit>().changeThemeColor(value);
              },
            ),
          ],
        );
      },
    );
  }
}

class RetroColorSchemeTile extends StatelessWidget {
  const RetroColorSchemeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return SwitchListTile.adaptive(
          value: state.themeType == ThemeType.retro,
          title: Text('retro_colors'.tr()),
          subtitle: Text('retro_colors_desc'.tr()),
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
          title: Text('auto_colors'.tr()),
          subtitle: Text('auto_colors_desc'.tr()),
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

class MockupLessonTile extends StatelessWidget {
  const MockupLessonTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LessonTile(
      name: 'list_tile'.tr(),
      classroom: 'classroom'.tr(),
      lecturers: ['lecturer1'.tr(), 'lecturer2'.tr()],
      groups: [
        'group1'.tr(),
      ],
      comment: "comment".tr(),
      startTime: const TimeOfDay(hour: 8, minute: 0),
      duration: const Duration(hours: 1, minutes: 30),
    );
  }
}
