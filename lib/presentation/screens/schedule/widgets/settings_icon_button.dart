import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/router.dart';

class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pushNamed(RouteNames.settings),
      icon: const Icon(Symbols.settings),
    );
  }
}
