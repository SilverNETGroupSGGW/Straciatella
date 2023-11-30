import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class SaveFab extends ConsumerWidget {
  const SaveFab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () async {
        ScaffoldMessenger.of(context).clearSnackBars();
        if (await ref.read(settingsDataProvider).saveToStorage()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Zapisano ustawienia'),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Nie udało się zapisać ustawień'),
            ),
          );
        }
      },
      child: const Icon(Icons.save_outlined),
    );
  }
}
