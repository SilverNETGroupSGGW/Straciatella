import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/account/account_bloc.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';
import 'package:psggw/presentation/widgets/settings/account/login/login_button.dart';
import 'package:psggw/presentation/widgets/settings/account/login/login_form.dart';
import 'package:psggw/router.dart';

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
                child: LoginTitleCard(),
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
  // Must be stateful to use formKey
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = context.select(
      (AccountBloc accountBloc) => accountBloc.state != AccountState.loggedOut,
    );

    Map<String, String> credentials = {
      'email': '',
      'password': '',
    };
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loggedIn: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login_success'.tr()),
              ),
            );
            context.read<SettingsBloc>().add(
                  SettingsEvent.firstRunEnded(completed: true),
                );
            context.read<SettingsBloc>().add(
                  SettingsEvent.saveRequested(),
                );
            Navigator.of(context).pushNamedAndRemoveUntil(
              RouteNames.timeline,
              (route) => false,
            );
          },
          loggedOut: (_) {
            context.read<SettingsBloc>().add(
                  SettingsEvent.firstRunEnded(completed: true),
                );
            context.read<SettingsBloc>().add(
                  SettingsEvent.saveRequested(),
                );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('login_failed'.tr()),
              ),
            );
          },
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              LoginForm(
                formKey: widget.formKey,
                credentials: credentials,
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: isButtonEnabled
                        ? () {
                            Navigator.of(context)
                                .pushReplacementNamed(RouteNames.timeline);
                          }
                        : null,
                    child: Text('skip'.tr()),
                  ),
                  LoginButton(
                    credentials: credentials,
                    formKey: widget.formKey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTitleCard extends StatelessWidget {
  const LoginTitleCard({
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
