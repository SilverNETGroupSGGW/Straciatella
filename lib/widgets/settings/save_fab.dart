import 'package:flutter/material.dart';

class SaveFab extends StatelessWidget {
  const SaveFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        ScaffoldMessenger.of(context).clearSnackBars();
        // TODO: Add save settings to storage logic
        if (await true) {
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
