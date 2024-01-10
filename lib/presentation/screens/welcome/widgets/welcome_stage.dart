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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (header != null)
            Expanded(
              flex: 4,
              child: header!,
            ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      desc,
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                if (leading != null) leading!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
