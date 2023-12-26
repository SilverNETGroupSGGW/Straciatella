import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:silvertimetable/logic/settings/settings_cubit.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('theme_color'.tr()),
      subtitle: Text('theme_color_desc'.tr()),
      trailing: Icon(Icons.colorize),
      onTap: () {
        // Show dialog
        showAdaptiveDialog(
          context: context,
          builder: (context) => ChangeThemeColorAlertDialog(
            originalColor: context.read<SettingsCubit>().state.themeColor,
          ),
        );
      },
    );
  }
}

class ChangeThemeColorAlertDialog extends StatelessWidget {
  final Color originalColor;
  const ChangeThemeColorAlertDialog({super.key, required this.originalColor});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text('theme_color'.tr()),
      content: BlockPicker(
        pickerColor: Theme.of(context).colorScheme.primary,
        onColorChanged: context.read<SettingsCubit>().changeThemeColor,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.read<SettingsCubit>().changeThemeColor(Colors.red);
            Navigator.of(context).pop();
          },
          child: Text('default'.tr()),
        ),
        TextButton(
          onPressed: () {
            context.read<SettingsCubit>().changeThemeColor(originalColor);
            Navigator.of(context).pop();
          },
          child: Text('cancel'.tr()),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('confirm'.tr()),
        ),
      ],
      icon: Icon(Icons.colorize),
    );
  }
}
