import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/notifiers/settings_provider.dart';
import 'package:psggw/widgets/settings/account/login/login_dialog.dart';

class LoginTile extends ConsumerWidget {
  const LoginTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Settings settings = ref.watch(settingsProvider);

    return ListTile(
      title: Text('account'.tr()),
      subtitle: Text(
        settings.accessToken == '' ? 'logged_out'.tr() : 'logged_in'.tr(),
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
