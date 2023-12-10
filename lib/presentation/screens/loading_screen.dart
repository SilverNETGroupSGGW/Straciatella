import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';
import 'package:psggw/router.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => false,
            loaded: (state) {
              Navigator.popAndPushNamed(context,
                  state.isFirstRun ? RouteNames.welcome : RouteNames.timeline);
            });
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
