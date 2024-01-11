import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class CustomColorSchemeTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return ExpansionTile(
          title: Text(LocaleKeys.custom_colors.tr()),
          subtitle: Text(LocaleKeys.custom_colors_desc.tr()),
          children: [
            ColorPicker(
              borderRadius: 12,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
