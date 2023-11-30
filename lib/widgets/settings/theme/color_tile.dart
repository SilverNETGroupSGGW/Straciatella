import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class ColorTile extends ConsumerWidget {
  const ColorTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Settings settings = ref.watch(settingsDataProvider);
    Color currentColor = settings.themeColor;
    return ListTile(
      title: Text('Kolor motywu'),
      subtitle: Text('Wybierz kolor motywu'),
      trailing: Icon(Icons.colorize),
      onTap: () {
        // Show dialog
        showAdaptiveDialog(
          context: context,
          builder: (context) => AlertDialog.adaptive(
            title: Text('Kolor motywu'),
            content: BlockPicker(
              pickerColor: settings.themeColor,
              onColorChanged: (color) {
                ref.read(settingsDataProvider.notifier).setThemeColor(color);
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  ref
                      .read(settingsDataProvider.notifier)
                      .setThemeColor(Colors.red);
                  Navigator.of(context).pop();
                },
                child: Text('Ustaw domyślny'),
              ),
              TextButton(
                onPressed: () {
                  ref
                      .read(settingsDataProvider.notifier)
                      .setThemeColor(currentColor);
                  Navigator.of(context).pop();
                },
                child: Text('Anuluj'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Zapisz'),
              ),
            ],
            icon: Icon(Icons.colorize),
          ),
        );
      },
    );
  }
}
