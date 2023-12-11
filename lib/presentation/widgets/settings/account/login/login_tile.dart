import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/account/account_bloc.dart';

import 'package:psggw/presentation/widgets/settings/account/login/login_dialog.dart';

class LoginTile extends StatelessWidget {
  const LoginTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('account'.tr()),
      subtitle: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          bool isLoggedIn = state.maybeMap(
            loggedIn: (state) => true,
            orElse: () => false,
          );
          return Text(
            isLoggedIn ? 'logged_in'.tr() : 'logged_out'.tr(),
          );
        },
      ),
      onTap: () {
        showAdaptiveDialog(
          context: context,
          builder: (context) => LoginDialog(),
        );
      },
      trailing: Icon(Icons.arrow_forward),
    );
  }
}
