import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/welcome/widgets/welcome_text.dart';

class WelcomeStage extends StatelessWidget {
  const WelcomeStage({
    super.key,
    required this.header,
    this.leading,
    required this.title,
    required this.desc,
    required this.animationController,
  });

  final Widget? header;
  final Widget? leading;
  final String title;
  final String desc;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: Column(
        children: [
          const Spacer(flex: 5),
          if (header != null) header!,
          const Spacer(flex: 2),
          WelcomeText(
            title: title,
            textStyle: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          WelcomeText(
            title: desc,
            textStyle: Theme.of(context).textTheme.bodyLarge,
          ),
          const Spacer(),
          if (leading != null) leading!,
          const Spacer(),
        ],
      ),
    );
  }
}
