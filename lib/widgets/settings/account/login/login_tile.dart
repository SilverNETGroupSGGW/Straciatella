import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/models/account_model/account.dart';

import 'package:psggw/widgets/settings/account/login/login_dialog.dart';

class LoginTile extends StatelessWidget {
  const LoginTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Handle account
    Account account;

    return ListTile(
      title: Text('account'.tr()),
      subtitle: Text(
        account.accessToken == '' ? 'logged_out'.tr() : 'logged_in'.tr(),
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
