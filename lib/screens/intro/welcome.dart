import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psggw/screens/intro/login.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle hugeTitle = GoogleFonts.rubik().copyWith(
      color: Theme.of(context).colorScheme.primary,
      height: 0.9,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plan',
                          style: hugeTitle,
                          textScaler: TextScaler.linear(9),
                        ),
                        Text(
                          "WZIM",
                          style: hugeTitle,
                          textScaler: TextScaler.linear(9),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "app_desc".tr(namedArgs: {'creator': "Us?"}),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.language),
                    label: Text("language".tr()),
                  ),
                  FilledButton.icon(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                    icon: Icon(Icons.play_arrow),
                    label: Text("start".tr()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
