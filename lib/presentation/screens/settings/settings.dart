import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/about_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/customization_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/debug_widgets_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/language_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/manage_schedules_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/notifications_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/privacy_policy_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/widgets/show_fab_switch_tile.dart';
import 'package:silvertimetable/presentation/widgets/category_label.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(LocaleKeys.settings.tr()),
            expandedHeight: 196,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CategoryLabel(text: LocaleKeys.schedules.tr()),
                ManageSchedulesTile(),
                CategoryLabel(text: LocaleKeys.preferences.tr()),
                CustomizationTile(),
                NotificationsTile(),
                LanguageTile(),
                ShowFabSwitchTile(),
                CategoryLabel(text: LocaleKeys.debug.tr()),
                DebugWidgetsTile(),
                CategoryLabel(text: LocaleKeys.about.tr()),
                PrivacyPolicyTile(),
                AboutTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
