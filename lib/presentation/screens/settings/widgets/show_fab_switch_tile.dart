import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShowFabSwitchTile extends StatelessWidget {
  const ShowFabSwitchTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      value: true,
      title: Text('show_fab'.tr()),
      subtitle: Text('show_fab_desc'.tr()),
      onChanged: (value) {
        // TODO: handle onChanged and value
      },
    );
  }
}
