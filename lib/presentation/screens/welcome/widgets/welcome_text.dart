import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;

  const WelcomeText({super.key, required this.title, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: textStyle, textAlign: TextAlign.center);
  }
}
