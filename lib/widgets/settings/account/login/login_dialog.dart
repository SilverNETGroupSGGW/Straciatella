import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

class LoginDialog extends StatefulWidget {
  LoginDialog({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  bool isButtonEnabled = true;
  @override
  Widget build(BuildContext context) {
    // TODO: Add login logic
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
                    // TODO: Add login logic
                    if ("login" == "login") {
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
