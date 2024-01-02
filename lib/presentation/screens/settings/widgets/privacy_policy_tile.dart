import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyTile extends StatelessWidget {
  const PrivacyPolicyTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('privacy_policy'.tr()),
      onTap: () {
        launchUrl(privacyPolicyUrl);
      },
    );
  }
}
