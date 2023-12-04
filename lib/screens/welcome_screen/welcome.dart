import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 120.0),
                  child: Column(
                    children: [
                      Text(
                        'app_name'.tr(),
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'app_desc'.tr(),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      ref
                          .read(settingsDataProvider.notifier)
                          .setLocale(Locale('pl', 'PL'), context);
                    },
                    child: Text('Polski'),
                  ),
                  FilledButton(
                    onPressed: () {
                      ref
                          .read(settingsDataProvider.notifier)
                          .setLocale(Locale('en', 'US'), context);
                    },
                    child: Text('English'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
