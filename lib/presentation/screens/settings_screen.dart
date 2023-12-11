import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/logic/settings/settings_cubit.dart';
import 'package:psggw/presentation/widgets/settings/theme/auto_theme_tile.dart';
import 'package:psggw/presentation/widgets/settings/theme/color_tile.dart';
import 'package:psggw/presentation/widgets/settings/account/login/login_tile.dart';
import 'package:psggw/presentation/widgets/settings/account/revoke_token_tile.dart';
import 'package:psggw/presentation/widgets/settings/account/refresh_token_tile.dart';
import 'package:psggw/presentation/widgets/settings/theme/theme_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
      ),
      body: Center(
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, settings) {
            return ListView(
              children: [
                ListCategoryLabel(label: 'theme'.tr()),
                AutoThemeModeTile(),
                DarkThemeModeTile(),
                ColorTile(),
                ListCategoryLabel(label: 'account'.tr()),
                LoginTile(),
                RefreshTokenTile(),
                RevokeTokenTile(),
                if (settings.isDebugMode) ...[
                  ListCategoryLabel(label: 'debug'.tr()),
                  DebugInfoTile(),
                ]
              ],
            );
          },
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
                    final settings = snapshot.data!.get('settings');
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
