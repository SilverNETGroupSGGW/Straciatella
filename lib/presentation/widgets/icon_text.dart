import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final TextStyle? style;
  const IconText(this.icon, this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          fill: 1,
          size: style?.fontSize,
        ),
        const Gap(8),
        Text(
          text,
          style: style,
        ),
      ],
    );
  }
}
