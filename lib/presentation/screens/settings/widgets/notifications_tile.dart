import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('notifications'.tr()),
      subtitle: Text('notifications_desc'.tr()),
      onTap: () {
        // TODO: handle onTap and value
      },
    );
  }
}
