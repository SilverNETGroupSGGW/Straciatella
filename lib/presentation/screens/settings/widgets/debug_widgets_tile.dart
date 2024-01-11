import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/router.dart';

class DebugWidgetsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(LocaleKeys.show_widgets.tr()),
      subtitle: Text(LocaleKeys.show_widgets_desc.tr()),
      onTap: () => Navigator.of(context).pushNamed(RouteNames.debug),
    );
  }
}
