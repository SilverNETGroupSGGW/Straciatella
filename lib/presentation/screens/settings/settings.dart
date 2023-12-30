import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/auto_theme_mode_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/color_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/dark_theme_mode_tile.dart';

import '../../widgets/category_label.dart';
import 'widgets/debug_widgets_tile.dart';
import 'widgets/language_tile.dart';
import 'widgets/manage_schedules_tile.dart';
import 'widgets/notifications_tile.dart';
import 'widgets/privacy_policy_tile.dart';
import 'widgets/show_fab_switch_tile.dart';

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
          ManageSchedulesTile(),
          CategoryLabel(text: 'preferences'.tr()),
          NotificationsTile(),
          LanguageTile(),
          ShowFabSwitchTile(),
          CategoryLabel(text: 'debug'.tr()),
          DebugWidgetsTile(),
          CategoryLabel(text: 'about'.tr()),
          PrivacyPolicyTile(),
          AboutListTile(),
        ],
      ),
    );
  }
}
