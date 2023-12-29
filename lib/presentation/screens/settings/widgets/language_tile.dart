import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('language'.tr()),
      subtitle: Text('language_desc'.tr()),
      onTap: () {
        // TODO: handle onTap and value
      },
    );
  }
}
