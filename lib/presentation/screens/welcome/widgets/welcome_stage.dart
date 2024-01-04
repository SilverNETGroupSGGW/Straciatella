import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeStage extends StatelessWidget {
  const WelcomeStage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon/icon.png',
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 250,
        ),
        Column(
          children: [
            Text(
              "welcome".tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "welcome_desc".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
