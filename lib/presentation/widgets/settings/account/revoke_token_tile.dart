// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/account/account_bloc.dart';

class RevokeTokenTile extends StatelessWidget {
  const RevokeTokenTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('logout'.tr()),
      subtitle: Text('logout_desc'.tr()),
      trailing: IconButton(
        onPressed: () async {
          // * używaj .then() na Future'ach dla czytelności kodu
          // Show dialog to confirm
          showDialog<bool>(
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
          ).then((confirm) {
            if (confirm ?? false) {
              context.read<AccountBloc>().add(
                    AccountEvent.refreshTokenFromStorageRequested(),
                  );
            }
          });
        },
        icon: const Icon(Icons.logout_outlined),
      ),
    );
  }
}
