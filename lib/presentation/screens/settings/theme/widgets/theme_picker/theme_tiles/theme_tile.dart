import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ThemeTile extends StatelessWidget {
  final Widget? child;
  final bool isSelected;
  final void Function()? onPressed;
  const ThemeTile({
    super.key,
    this.child,
    this.onPressed,
    this.isSelected = false,
  });

  factory ThemeTile.color(
    Color color, {
    void Function()? onPressed,
    bool isSelected = false,
  }) {
    return ThemeTile(
      isSelected: isSelected,
      onPressed: onPressed,
      child: Ink(color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double size = 60;

    return SizedBox(
      width: size,
      height: size,
      child: Material(
        type: MaterialType.card,
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          focusColor: isSelected ? Colors.transparent : Colors.black12,
          highlightColor: isSelected
              ? Colors.transparent
              : Theme.of(context).highlightColor,
          hoverColor: Colors.black12,
          onTap: onPressed,
          child: Stack(
            children: [
              if (child != null) child!,
              if (isSelected)
                const Align(
                  child: Icon(
                    Symbols.check_rounded,
                    size: size * 0.6,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
