import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';
import 'package:psggw/widgets/settings/account/login/login_dialog.dart';

class LoginTile extends ConsumerStatefulWidget {
  const LoginTile({
    super.key,
  });

  @override
  ConsumerState<LoginTile> createState() => _LoginTileState();
}

class _LoginTileState extends ConsumerState<LoginTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Settings settingsData = ref.watch(settingsDataProvider);

    return ListTile(
      title: Text('account'.tr()),
      subtitle: Text(
        settingsData.accessToken == '' ? 'logged_out'.tr() : 'logged_in'.tr(),
      ),
      onTap: () {
        // Show dialog
        showAdaptiveDialog(
          context: context,
          builder: (context) => LoginDialog(),
        );
      },
      trailing: Icon(Icons.arrow_forward),
    );
  }
}
