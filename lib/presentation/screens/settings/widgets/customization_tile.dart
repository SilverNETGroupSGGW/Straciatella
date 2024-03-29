import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:silvertimetable/router.dart';

class CustomizationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(LocaleKeys.customization.tr()),
      subtitle: Text(LocaleKeys.customization_desc.tr()),
      onTap: () {
        Navigator.pushNamed(context, RouteNames.theme);
      },
    );
  }
}
