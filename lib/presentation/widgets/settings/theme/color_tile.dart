import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';

class ColorTile extends StatefulWidget {
  const ColorTile({super.key});

  @override
  State<ColorTile> createState() => _ColorTileState();
}

class _ColorTileState extends State<ColorTile> {
  late Color origColor;

  @override
  void initState() {
    super.initState();
    origColor = context.read<SettingsBloc>().state.mapOrNull(
              loaded: (value) => value.themeColor,
            ) ??
        Theme.of(context).colorScheme.primary;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: fix adding events
    return ListTile(
      title: Text('theme_color'.tr()),
      subtitle: Text('theme_color_desc'.tr()),
      trailing: Icon(Icons.colorize),
      onTap: () {
        // Show dialog
        showAdaptiveDialog(
          context: context,
          builder: (context) => AlertDialog.adaptive(
            title: Text('theme_color'.tr()),
            content: BlockPicker(
              pickerColor: Theme.of(context).colorScheme.primary,
              onColorChanged: (color) {
                SettingsEvent.themeColorChanged(themeColor: color);
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  SettingsEvent.themeColorChanged(themeColor: Colors.red);
                  Navigator.of(context).pop();
                },
                child: Text('default'.tr()),
              ),
              TextButton(
                onPressed: () {
                  SettingsEvent.themeColorChanged(themeColor: origColor);
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
          ),
        );
      },
    );
  }
}
