import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/notifiers/credentials_provder.dart';
import 'package:psggw/notifiers/settings_provider.dart';
import 'package:psggw/screens/timeline_screen.dart';
import 'package:psggw/widgets/settings/account/login/login_form.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

class LoginCard extends ConsumerStatefulWidget {
  LoginCard({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  ConsumerState<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends ConsumerState<LoginCard> {
  bool isButtonEnabled = false;

  void enableButton() {
    if (!isButtonEnabled)
      setState(() {
        isButtonEnabled = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    Settings settings = ref.watch(settingsProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            LoginForm(
              formKey: widget.formKey,
              onChanged: enableButton,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                            widget.formKey.currentState!.save();
                            setState(() {
                              isButtonEnabled = false;
                            });
                            if (await ref
                                .read(credentialsProvider.notifier)
                                .login(settings.apiUrl)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('login_success'.tr()),
                                ),
                              );
                              ref.read(credentialsProvider).saveToStorage();

                              ref
                                  .read(settingsProvider.notifier)
                                  .setFirstRun(false);
                              settings.saveToStorage();
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => Timeline(),
                                ),
                              );
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

                          if (settings.firstRun) {
                            ref
                                .read(settingsProvider.notifier)
                                .setFirstRun(false);
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
