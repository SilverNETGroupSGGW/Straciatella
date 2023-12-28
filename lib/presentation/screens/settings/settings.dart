import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/color_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';
import 'package:silvertimetable/router.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
      ),
      body: ListView(
        children: [
          CategoryLabel(text: 'theme'.tr()),
          AutoThemeModeTile(),
          DarkThemeModeTile(),
          ColorTile(),
          CategoryLabel(text: 'schedules'.tr()),
          ListTile(
            title: Text('manage_schedules'.tr()),
            subtitle: Text('manage_schedules_desc'.tr()),
            onTap: () {
              // TODO: handle onTap and value
            },
          ),
          CategoryLabel(text: 'preferences'.tr()),
          ListTile(
            title: Text('notifications'.tr()),
            subtitle: Text('notifications_desc'.tr()),
            onTap: () {
              // TODO: handle onTap and value
            },
          ),
          ListTile(
            title: Text('language'.tr()),
            subtitle: Text('language_desc'.tr()),
            onTap: () {
              // TODO: handle onTap and value
            },
          ),
          SwitchListTile.adaptive(
            value: true,
            title: Text('show_fab'.tr()),
            subtitle: Text('show_fab_desc'.tr()),
            onChanged: (value) {
              // TODO: handle onChanged and value
            },
          ),
          CategoryLabel(text: 'debug'.tr()),
          DebugWidgetsTile(),
          CategoryLabel(text: 'about'.tr()),
          ListTile(
            title: Text('privacy_policy'.tr()),
            onTap: () async {
              if (!await launchUrl(privacyPolicyUrl)) {
                throw Exception("Error");
              }
            },
          ),
          AboutListTile(),
        ],
      ),
    );
  }
}

class DebugWidgetsTile extends StatelessWidget {
  const DebugWidgetsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('show_widgets'.tr()),
      subtitle: Text('show_widgets_desc'.tr()),
      onTap: () => Navigator.of(context).pushNamed(RouteNames.debug),
    );
  }
}

class CategoryLabel extends StatelessWidget {
  const CategoryLabel({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.primary;
    TextStyle? textStyle =
        Theme.of(context).textTheme.labelLarge?.copyWith(color: color);
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        bottom: 6,
        top: 6,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
