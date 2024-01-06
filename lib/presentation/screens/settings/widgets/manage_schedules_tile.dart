import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ManageSchedulesTile extends StatelessWidget {
  const ManageSchedulesTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('manage_schedules'.tr()),
      subtitle: Text('manage_schedules_desc'.tr()),
      onTap: () {
        // TODO: handle onTap and value
      },
    );
  }
}
