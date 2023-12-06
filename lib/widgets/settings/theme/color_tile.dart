import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/notifiers/settings_provider.dart';

class ColorTile extends ConsumerWidget {
  const ColorTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Settings settings = ref.watch(settingsProvider);
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
                ref.read(settingsProvider.notifier).setThemeColor(color);
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  ref.read(settingsProvider.notifier).setThemeColor(Colors.red);
                  Navigator.of(context).pop();
                },
                child: Text('default'.tr()),
              ),
              TextButton(
                onPressed: () {
                  ref
                      .read(settingsProvider.notifier)
                      .setThemeColor(currentColor);
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
