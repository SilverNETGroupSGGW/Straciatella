import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(LocaleKeys.privacy_policy.tr()),
      onTap: () {
        launchUrl(privacyPolicyUrl);
      },
    );
  }
}
