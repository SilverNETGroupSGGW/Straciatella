import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:psggw/models/settings.dart';

class LoginDialog extends ConsumerWidget {
  LoginDialog({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Future<Box> loginCredentialsBox = Hive.openBox('login_credentials');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var settingsData = ref.watch(settingsDataProvider);

    return FutureBuilder(
      future: loginCredentialsBox,
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
            final form = formKey.currentState as FormState;
            if (form.validate()) {
              form.save();
              String token = await ref
                  .read(settingsDataProvider.notifier)
                  .login(credentials);
              if (token.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Login successful'),
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
                    content: Text('Login failed'),
                  ),
                );
              }
            }
          }

          return AlertDialog.adaptive(
            content: Form(
              key: formKey,
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
                              labelText: 'API URL',
                            ),
                            initialValue: settingsData.apiUrl,
                            autofillHints: const [AutofillHints.url],
                            onSaved: (value) {
                              ref
                                  .read(settingsDataProvider.notifier)
                                  .setApiUrl(value ?? '');
                            },
                            onChanged: (value) {
                              formKey.currentState!.reset();
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !Uri.parse(value).isAbsolute) {
                                return 'Please enter API URL';
                              }
                              return null;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            ref.read(settingsDataProvider.notifier).setApiUrl(
                                'https://kampus-sggw-api.azurewebsites.net/api');
                          },
                          icon: const Icon(Icons.restore),
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                      initialValue: credentials['email'] ?? '',
                      autofillHints: const [AutofillHints.username],
                      onSaved: (value) {
                        credentials['email'] = value ?? '';
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your login';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      autofillHints: const [AutofillHints.password],
                      obscureText: true,
                      onSaved: (value) {
                        credentials['password'] = value ?? '';
                      },
                      initialValue: credentials['password'] ?? '',
                      onChanged: (value) {
                        if (formKey.currentState == null) {
                          return;
                        }
                        formKey.currentState!.reset();
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
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
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: onSave,
                child: Text('Save'),
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
