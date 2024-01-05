import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';

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

    return Material(
      type: MaterialType.card,
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: size,
        height: size,
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
                    MaterialSymbols.check_filled_outlined,
                    size: size * 0.6,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
