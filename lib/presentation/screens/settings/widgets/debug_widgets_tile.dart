import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/router.dart';

class DebugWidgetsTile extends StatelessWidget {
  const DebugWidgetsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('show_widgets'.tr()),
      subtitle: Text('show_widgets_desc'.tr()),
      onTap: () => Navigator.of(context).pushNamed(RouteNames.debug),
    );
  }
}
