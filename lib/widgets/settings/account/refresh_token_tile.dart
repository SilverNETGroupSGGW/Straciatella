import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings.dart';

class RefreshTokenTile extends ConsumerWidget {
  const RefreshTokenTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text('refresh_token'.tr()),
      subtitle: Text('refresh_token_desc'.tr()),
      trailing: IconButton(
        onPressed: () async {
          ScaffoldMessenger.of(context).clearSnackBars();
          if (await ref.read(settingsDataProvider.notifier).refreshToken()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('refresh_token_successful'.tr()),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('refresh_token_failed'.tr()),
              ),
            );
          }
        },
        icon: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
