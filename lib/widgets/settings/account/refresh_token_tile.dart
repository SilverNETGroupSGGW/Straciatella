import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RefreshTokenTile extends StatelessWidget {
  const RefreshTokenTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('refresh_token'.tr()),
      subtitle: Text('refresh_token_desc'.tr()),
      trailing: IconButton(
        onPressed: () async {
          ScaffoldMessenger.of(context).clearSnackBars();
          // TODO: Add refresh token logic
          if (await true) {
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
