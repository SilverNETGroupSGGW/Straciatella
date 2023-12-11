import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/logic/account/account_bloc.dart';

class RefreshTokenTile extends StatelessWidget {
  const RefreshTokenTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('refresh_token'.tr()),
      subtitle: Text('refresh_token_desc'.tr()),
      trailing: IconButton(
        onPressed: () {
          // * używaj .then() na Future'ach dla czytelności kodu
          // Show dialog to confirm
          showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('refresh_token'.tr()),
              content: Text('refresh_token_confirm'.tr()),
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
        icon: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
