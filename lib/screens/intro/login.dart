import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TitleCard(),
                flex: 1,
              ),
              Expanded(
                child: LoginCard(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              'login'.tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'api_url'.tr(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'email'.tr(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'password'.tr(),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text('register'.tr()),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text('login'.tr()),
                ),
              ],
            )
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
              'account'.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              'login_desc'.tr(),
            )
          ],
        ),
      ),
    );
  }
}
