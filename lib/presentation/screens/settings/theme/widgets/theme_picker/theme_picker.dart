import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/adaptive_theme_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/basic_color_theme_tile.dart';
import 'package:silvertimetable/presentation/screens/settings/theme/widgets/theme_picker/theme_tiles/retro_theme_tile.dart';

class ThemePicker extends StatelessWidget {
  const ThemePicker({super.key});

  static final List<Color> basicColors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    final basicTiles = basicColors
        .map(
          (e) => BasicColorThemeTile(
            color: e,
          ),
        )
        .toList();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60 * 4 + 8 * 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                runSpacing: 8,
                spacing: 8,
                alignment: WrapAlignment.center,
                children: basicTiles,
              ),
              const Divider(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  RetroThemeTile(),
                  if (!kIsWeb || kDebugMode) AdaptiveThemeTile(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
