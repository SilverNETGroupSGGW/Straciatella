import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(LocaleKeys.notifications.tr()),
      subtitle: Text(LocaleKeys.notifications_desc.tr()),
      onTap: () {
        // TODO: handle onTap and value
      },
    );
  }
}
