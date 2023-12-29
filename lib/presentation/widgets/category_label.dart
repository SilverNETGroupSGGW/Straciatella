import 'package:flutter/material.dart';

class CategoryLabel extends StatelessWidget {
  const CategoryLabel({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.primary;
    TextStyle? textStyle =
        Theme.of(context).textTheme.labelLarge?.copyWith(color: color);
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        bottom: 6,
        top: 6,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
