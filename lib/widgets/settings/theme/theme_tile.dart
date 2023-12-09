import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DarkThemeModeTile extends StatelessWidget {
  const DarkThemeModeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Add ThemeMode handling
    ThemeMode currentThemeMode;

    return ListTile(
      enabled: currentThemeMode != ThemeMode.system,
      title: Text('theme_dark'.tr()),
      subtitle: Text('theme_dark_desc'.tr()),
      trailing: Switch(
        value: currentThemeMode != ThemeMode.light,
        onChanged: currentThemeMode == ThemeMode.system
            ? null
            : (bool value) {
                if (value) {
                  // TODO: Add dark theme
                } else {
                  // TODO: Add light theme
                }
              },
      ),
    );
  }
}
