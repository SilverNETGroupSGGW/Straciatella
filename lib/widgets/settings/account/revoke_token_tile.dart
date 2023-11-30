import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class RevokeTokenTile extends ConsumerWidget {
  const RevokeTokenTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: const Text('Wyloguj'),
      subtitle: const Text('Wyloguj się z konta'),
      trailing: IconButton(
        onPressed: () async {
          // Show dialog to confirm
          bool confirm = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Wylogowywanie'),
              content: const Text('Czy na pewno chcesz się wylogować?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Nie'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Tak'),
                ),
              ],
            ),
          );

          if (confirm) {
            ScaffoldMessenger.of(context).clearSnackBars();
            if (await ref.read(settingsDataProvider.notifier).revokeToken()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Wylogowano'),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Nie udało się wylogować'),
                ),
              );
            }
          }
        },
        icon: const Icon(Icons.logout_outlined),
      ),
    );
  }
}
