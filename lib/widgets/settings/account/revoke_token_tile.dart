// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/settings_model.dart';
import 'package:psggw/notifiers/settings_provider.dart';

class RevokeTokenTile extends ConsumerWidget {
  const RevokeTokenTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text('logout'.tr()),
      subtitle: Text('logout_desc'.tr()),
      trailing: IconButton(
        onPressed: () async {
          // Show dialog to confirm
          bool confirm = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('logout'.tr()),
              content: Text('logout_confirm'.tr()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('no'.tr()),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('yes'.tr()),
                ),
              ],
            ),
          );

          if (confirm) {
            ScaffoldMessenger.of(context).clearSnackBars();
            if (await ref.read(settingsProvider.notifier).revokeToken()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('logout_success'.tr()),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('logout_failed'.tr()),
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
