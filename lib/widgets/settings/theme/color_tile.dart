import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';
import 'package:psggw/models/settings_model/settings.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Settings settings =
        context.select((SettingsBloc bloc) => bloc.state.maybeMap(
              loaded: (state) => state.settings,
              orElse: () => Settings.empty(),
            ));
    Color prevColor = settings
        .themeColor; // This color will be set if the user cancels the picker.
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
                  SettingsEvent.themeColorChanged(themeColor: prevColor);
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
