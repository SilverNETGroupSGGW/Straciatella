import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:psggw/models/settings_model/settings.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Handle settings
    Settings settings;
    Color currentColor = settings.themeColor;
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
              pickerColor: settings.themeColor,
              onColorChanged: (color) {
                // TODO: Set choosen color
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // TODO: Add default color (red)
                  Navigator.of(context).pop();
                },
                child: Text('default'.tr()),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Set color to 'current' color
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
