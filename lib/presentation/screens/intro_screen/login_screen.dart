import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/account/account_bloc.dart';
import 'package:psggw/logic/settings/settings_cubit.dart';
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
    // TODO: Ta zmienne isButtonEnabled jest używana przez TextButton głęboko w tym widgecie.
    // funckja select powoduje, że cały widget LoginCard będzie rerenderowany kiedy AccountBloc się zmieni
    // Trzeba użyć BlocBuildera tak by był jak najbiżej użycia tego stanu z bloca.
    // W tym przypadku otaczamy widget TextButton, dzięki temu tylko ten TextButton będzie renderował się ponownie, a nie cały LoginCard
    // TODO: raczej używaj .map bo porównanie do AccountState.loggedOut nie zadziała
    // AccountState.loggedOut jest funkcją, a nie obiektem (state też nie jest typem tylko obiektem), więc ten bool będzie zawsze równy true

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
            context.read<SettingsCubit>().completeFirstRun();
            Navigator.of(context).pushNamedAndRemoveUntil(
              RouteNames.timeline,
              (route) => false,
            );
          },
          loggedOut: (_) {
            context.read<SettingsCubit>().completeFirstRun();
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
                  BlocBuilder<SettingsCubit, SettingsState>(
                    builder: (context, state) {
                      bool isButtonEnabled = context.select(
                        (AccountBloc accountBloc) => accountBloc.state.maybeMap(
                          orElse: () => false,
                          loggingIn: (value) => true,
                        ),
                      );
                      return TextButton(
                        onPressed: isButtonEnabled
                            ? () {
                                Navigator.of(context)
                                    .pushReplacementNamed(RouteNames.timeline);
                              }
                            : null,
                        child: Text('skip'.tr()),
                      );
                    },
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
