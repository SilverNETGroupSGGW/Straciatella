import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/faded_text.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    super.key,
    this.reverse = false,
    required this.icon,
    required this.text,
    required this.textStyle,
  });
  final bool reverse;
  final TextStyle? textStyle;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final mainAxisAlignment = switch (reverse) {
      true => MainAxisAlignment.end,
      false => MainAxisAlignment.start,
    };

    final rowItems = [
      Icon(icon),
      SizedBox(width: 8),
      FadedText(
        textStyle: textStyle,
        text: text,
        reverse: reverse,
      ),
    ];

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: reverse ? rowItems.reversed.toList() : rowItems,
    );
  }
}
