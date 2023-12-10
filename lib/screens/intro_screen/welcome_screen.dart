import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';
import 'package:psggw/screens/intro_screen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle hugeTitle = GoogleFonts.rubik().copyWith(
      color: Theme.of(context).colorScheme.primary,
      height: 0.9,
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TitleText(
                      controller: _controller,
                      hugeTitle: hugeTitle,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    DescriptionText(controller: _controller),
                  ],
                ),
              ),
              ButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LanguageButton(),
        GoToLoginScreenButton(),
      ],
    );
  }
}

class GoToLoginScreenButton extends StatelessWidget {
  const GoToLoginScreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () => Navigator.of(context).push(
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 330),
          pageBuilder: (context, animation, secondaryAnimation) =>
              LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      icon: Icon(Icons.play_arrow),
      label: Text("start".tr()),
    );
  }
}

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        showAdaptiveDialog(
          context: context,
          builder: (context) {
            return LanguageDialog();
          },
        );
      },
      icon: Icon(Icons.language),
      label: Text("language".tr()),
    );
  }
}

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('language'.tr()),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('polish'.tr()),
            onTap: () {
              SettingsEvent.localeChanged(
                locale: Locale('pl', 'PL'),
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text('english'.tr()),
            onTap: () {
              SettingsEvent.localeChanged(
                locale: Locale('en', 'US'),
              );
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  DescriptionText({
    super.key,
    required this.controller,
  }) : animation = CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.4,
            1.0,
            curve: Curves.easeInOut,
          ),
        );

  final AnimationController controller;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          "app_desc".tr(namedArgs: {'creator': "Us?"}),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  TitleText({
    super.key,
    required this.controller,
    required this.hugeTitle,
  })  : firstAnimation = CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.0,
            0.5,
            curve: Curves.easeInOut,
          ),
        ),
        secondAnimation = CurvedAnimation(
          parent: controller,
          curve: Interval(
            0.1,
            0.6,
            curve: Curves.easeInOut,
          ),
        );

  final AnimationController controller;
  final TextStyle hugeTitle;
  final Animation<double> firstAnimation;
  final Animation<double> secondAnimation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset.fromDirection(0, -1.1),
            end: Offset.zero,
          ).animate(firstAnimation),
          child: Text(
            'Plan',
            style: hugeTitle,
            textScaler: TextScaler.linear(9),
          ),
        ),
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset.fromDirection(0, -1.1),
            end: Offset.zero,
          ).animate(secondAnimation),
          child: Text(
            "WZIM",
            style: hugeTitle,
            textScaler: TextScaler.linear(9),
          ),
        ),
      ],
    );
  }
}
