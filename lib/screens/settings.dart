import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/widgets/settings/theme/color_tile.dart';
import 'package:psggw/widgets/settings/account/login/login_tile.dart';
import 'package:psggw/widgets/settings/theme/auto_theme_tile.dart';
import 'package:psggw/widgets/settings/account/revoke_token_tile.dart';
import 'package:psggw/widgets/settings/account/refresh_token_tile.dart';
import 'package:psggw/widgets/settings/save_fab.dart';
import 'package:psggw/widgets/settings/theme/theme_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: SaveFab(),
      body: Center(
        child: ListView(
          children: [
            ListCategoryLabel(label: 'theme'.tr()),
            ColorTile(),
            AutoThemeSwitcher(),
            ThemeSwitcher(),
            ListCategoryLabel(label: 'account'.tr()),
            LoginTile(),
            RefreshTokenTile(),
            RevokeTokenTile(),
          ],
        ),
      ),
    );
  }
}

class ListCategoryLabel extends StatelessWidget {
  const ListCategoryLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
