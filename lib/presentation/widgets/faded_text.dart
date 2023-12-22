import 'package:flutter/material.dart';

class FadedText extends StatelessWidget {
  const FadedText({
    super.key,
    required this.textStyle,
    required this.text,
    this.reverse = false,
  });

  final String text;
  final TextStyle? textStyle;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        overflow: TextOverflow.fade,
        textAlign: reverse ? TextAlign.end : TextAlign.start,
        softWrap: false,
        maxLines: 1,
        style: textStyle,
      ),
    );
  }
}
