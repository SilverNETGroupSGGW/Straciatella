import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/models/account_model/bloc/account_bloc.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.credentials,
    required this.formKey,
  });

  final Map<String, String> credentials;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = context.select(
      (AccountBloc accountBloc) => accountBloc.state != AccountState.loggedOut,
    );
    return FilledButton(
      onPressed: isButtonEnabled
          ? () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                context.read<AccountBloc>().add(
                      AccountEvent.loginRequested(
                        deviceToken:
                            context.read<SettingsBloc>().state.maybeMap(
                                  orElse: () => '',
                                  loaded: (state) => state.settings.deviceToken,
                                ),
                        apiURL: credentials['apiURL'] ?? '',
                        email: credentials['email'] ?? '',
                        password: credentials['password'] ?? '',
                      ),
                    );
              }
            }
          : null,
      child: isButtonEnabled ? Text('login'.tr()) : Text('logging_in'.tr()),
    );
  }
}
