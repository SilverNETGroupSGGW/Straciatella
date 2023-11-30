import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class RefreshTokenTile extends ConsumerWidget {
  const RefreshTokenTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: const Text('Odśwież token'),
      subtitle: const Text('Odśwież token dostępu do API'),
      trailing: IconButton(
        onPressed: () async {
          ScaffoldMessenger.of(context).clearSnackBars();
          if (await ref.read(settingsDataProvider.notifier).refreshToken()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Odświeżono token'),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Nie udało się odświeżyć tokenu'),
              ),
            );
          }
        },
        icon: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
