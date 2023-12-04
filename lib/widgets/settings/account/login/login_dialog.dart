import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings.dart';

class LoginDialog extends ConsumerStatefulWidget {
  LoginDialog({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Future<Box> loginCredentialsBox = Hive.openBox('login_credentials');

  @override
  ConsumerState<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends ConsumerState<LoginDialog> {
  @override
  Widget build(BuildContext context) {
    var settingsData = ref.watch(settingsDataProvider);
    bool isUpdating = false;

    void changeUpdateState() => setState(() {
          isUpdating = true;
        });

    return FutureBuilder(
      future: widget.loginCredentialsBox,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final Map credentialsRaw = snapshot.data!.get(
            'account',
            defaultValue: {
              'email': '',
              'password': '',
              'deviceToken': 'WZIM Plan',
            },
          );

          final Map<String, String> credentials = credentialsRaw.map(
            (key, value) => MapEntry(key as String, value as String),
          );

          void onSave() async {
            changeUpdateState();
            final form = widget.formKey.currentState as FormState;
            if (form.validate()) {
              form.save();
              String token = await ref
                  .read(settingsDataProvider.notifier)
                  .login(credentials);
              if (token.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('login_successful'.tr()),
                  ),
                );
                settingsData.saveToStorage();
                ref
                    .read(settingsDataProvider.notifier)
                    .saveCredentialsToStorage(credentials);
                Navigator.of(context).pop();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('login_failed'.tr()),
                  ),
                );
              }
            }
            changeUpdateState();
          }

          return AlertDialog.adaptive(
            content: Form(
              key: widget.formKey,
              child: AutofillGroup(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'api_url'.tr(),
                            ),
                            enabled: !isUpdating,
                            initialValue: settingsData.apiUrl,
                            autofillHints: const [AutofillHints.url],
                            onSaved: (value) {
                              ref
                                  .read(settingsDataProvider.notifier)
                                  .setApiUrl(value ?? '');
                            },
                            onChanged: (value) {
                              widget.formKey.currentState!.reset();
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !Uri.parse(value).isAbsolute) {
                                return 'api_url_empty'.tr();
                              }
                              return null;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: isUpdating
                              ? null
                              : () {
                                  ref.read(settingsDataProvider.notifier).setApiUrl(
                                      'https://kampus-sggw-api.azurewebsites.net/api');
                                },
                          icon: const Icon(Icons.restore),
                        ),
                      ],
                    ),
                    TextFormField(
                      enabled: !isUpdating,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      initialValue: credentials['email'] ?? '',
                      autofillHints: const [AutofillHints.username],
                      onSaved: (value) {
                        credentials['email'] = value ?? '';
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'email_empty'.tr();
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      enabled: !isUpdating,
                      decoration: InputDecoration(
                        labelText: 'password'.tr(),
                      ),
                      autofillHints: const [AutofillHints.password],
                      obscureText: true,
                      onSaved: (value) {
                        credentials['password'] = value ?? '';
                      },
                      initialValue: credentials['password'] ?? '',
                      onChanged: (value) {
                        if (widget.formKey.currentState == null) {
                          return;
                        }
                        widget.formKey.currentState!.reset();
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'password_empty'.tr();
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed:
                    isUpdating ? null : () => Navigator.of(context).pop(),
                child: Text('cancel'.tr()),
              ),
              TextButton(
                onPressed: isUpdating ? null : onSave,
                child: Text('save'.tr()),
              ),
            ],
          );
        } else {
          return AlertDialog.adaptive(
            content: const CircularProgressIndicator.adaptive(),
          );
        }
      },
    );
  }
}
