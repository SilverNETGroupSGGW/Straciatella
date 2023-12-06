import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/notifiers/credentials_provder.dart';
import 'package:psggw/notifiers/settings_provider.dart';

import 'login_form.dart';

class LoginDialog extends ConsumerStatefulWidget {
  LoginDialog({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  ConsumerState<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends ConsumerState<LoginDialog> {
  bool isButtonEnabled = true;
  @override
  Widget build(BuildContext context) {
    Settings settings = ref.watch(settingsProvider);
    return AlertDialog.adaptive(
      content: LoginForm(
        formKey: widget.formKey,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('cancel'.tr()),
        ),
        TextButton(
          onPressed: isButtonEnabled
              ? () async {
                  if (widget.formKey.currentState!.validate()) {
                    setState(() {
                      isButtonEnabled = false;
                    });
                    widget.formKey.currentState!.save();
                    if (await ref
                        .read(credentialsProvider.notifier)
                        .login(settings.apiUrl)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('login_success'.tr()),
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                    setState(() {
                      isButtonEnabled = true;
                    });
                  }
                }
              : null,
          child: isButtonEnabled ? Text('save'.tr()) : Text('logging_in'.tr()),
        ),
      ],
    );
  }
}
