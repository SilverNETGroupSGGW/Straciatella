import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AutoThemeModeTile extends StatelessWidget {
  const AutoThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Add ThemeMode handling
    ThemeMode currentThemeSettings;
    return ListTile(
      title: Text('theme_auto_dark'.tr()),
      subtitle: Text('theme_auto_dark_desc'.tr()),
      trailing: Switch(
        value: currentThemeSettings == ThemeMode.system,
        onChanged: // TODO: Add ThemeMode handling
            null,
      ),
    );
  }
}
