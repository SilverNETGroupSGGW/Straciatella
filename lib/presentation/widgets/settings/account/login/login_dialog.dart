import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/account/account_bloc.dart';

import 'login_button.dart';
import 'login_form.dart';

class LoginDialog extends StatefulWidget {
  LoginDialog({super.key});
  // Must stay stateful to keep form working!
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  Map<String, String> credentials = {
    'email': '',
    'password': '',
  };
  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loggedIn: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login_successful'.tr()),
              ),
            );
            context.read<AccountBloc>().add(
                  AccountEvent.saveToStorage(),
                );
            Navigator.of(context).pop();
          },
          loggedOut: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login_failed'.tr()),
              ),
            );
          },
        );
      },
      child: AlertDialog.adaptive(
        content: LoginForm(
          formKey: widget.formKey,
          credentials: credentials,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('cancel'.tr()),
          ),
          LoginButton(
            formKey: widget.formKey,
            credentials: credentials,
          ),
        ],
      ),
    );
  }
}
