import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/models/settings_model/settings.dart';

import 'package:psggw/widgets/settings/account/login/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CustomScrollView(
            primary: false,
            reverse: true,
            slivers: [
              SliverToBoxAdapter(child: LoginCard()),
              SliverFillRemaining(
                hasScrollBody: false,
                child: TitleCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginCard extends StatefulWidget {
  LoginCard({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  bool isButtonEnabled = true;

  @override
  Widget build(BuildContext context) {
    void endFirstRun() async {
      // TODO: implement endFirstRun
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/timeline',
        (route) => false,
      );
    }

    Settings settings;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            LoginForm(
              formKey: widget.formKey,
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: endFirstRun,
                  child: Text('skip'.tr()),
                ),
                FilledButton(
                  onPressed: isButtonEnabled
                      ? () async {
                          if (widget.formKey.currentState!.validate()) {
                            setState(() {
                              isButtonEnabled = false;
                            });
                            widget.formKey.currentState!.save();
                            if ( // TODO: implement login
                                "true" == "true") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('login_success'.tr()),
                                ),
                              );
                              // TODO: save credentials to storage

                              endFirstRun();
                            } else
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('login_failed'.tr()),
                                ),
                              );
                            setState(() {
                              isButtonEnabled = true;
                            });
                          }

                          if (settings.isFirstRun) {
                            // TODO: set first run to false
                          }
                        }
                      : null,
                  child: isButtonEnabled
                      ? Text('login'.tr())
                      : Text('logging_in'.tr()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              overflow: TextOverflow.fade,
              'account'.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              overflow: TextOverflow.fade,
              'login_desc'.tr(),
            )
          ],
        ),
      ),
    );
  }
}
