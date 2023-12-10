import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';
import 'package:psggw/models/settings_model/settings.dart';
import 'package:psggw/widgets/settings/theme/auto_theme_tile.dart';
import 'package:psggw/widgets/settings/theme/color_tile.dart';
import 'package:psggw/widgets/settings/account/login/login_tile.dart';
import 'package:psggw/widgets/settings/account/revoke_token_tile.dart';
import 'package:psggw/widgets/settings/account/refresh_token_tile.dart';
import 'package:psggw/widgets/settings/save_fab.dart';
import 'package:psggw/widgets/settings/theme/theme_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Settings settings = context.select(
      (SettingsBloc settingsBloc) => settingsBloc.state.maybeMap(
        loaded: (state) => state.settings,
        orElse: () => Settings.empty(),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
      ),
      floatingActionButton: SaveFab(),
      body: Center(
        child: ListView(
          children: [
            ListCategoryLabel(label: 'theme'.tr()),
            AutoThemeModeTile(),
            DarkThemeModeTile(),
            ColorTile(),
            ListCategoryLabel(label: 'account'.tr()),
            LoginTile(),
            RefreshTokenTile(),
            RevokeTokenTile(),
            ...settings.isDebugMode
                ? [
                    ListCategoryLabel(label: 'debug'.tr()),
                    DebugInfoTile(),
                  ]
                : [],
          ],
        ),
      ),
    );
  }
}

class DebugInfoTile extends StatelessWidget {
  const DebugInfoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('show_data_on_device'.tr()),
      onTap: () async {
        Future<Box> settingsBox = Hive.openBox('settings');
        showAdaptiveDialog(
          context: context,
          builder: (context) {
            return FutureBuilder(
                future: settingsBox,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    Settings settings = snapshot.data!.get('settings');
                    return AlertDialog(
                      title: Text('show_data_on_device'.tr()),
                      content: Text(settings.toString()),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('cancel'.tr()),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/debug');
                          },
                          child: Text('ok'.tr()),
                        ),
                      ],
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                });
          },
        );
      },
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
