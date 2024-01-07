import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (header != null)
            Expanded(
              flex: 2,
              child: header!,
            ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      desc,
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                if (leading != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: leading,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
