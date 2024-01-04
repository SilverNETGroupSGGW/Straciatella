import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';

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
        showLanguageDialog(context);
      },
    );
  }

  Future<dynamic> showLanguageDialog(BuildContext context) {
    return showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        contentPadding: const EdgeInsets.symmetric(vertical: 24),
        title: Text('language'.tr()),
        icon: const Icon(Icons.language),
        content: SingleChildScrollView(
          child: Column(
            children: [
              for (final locale in supportedLocale)
                ListTile(
                  leading: Radio(
                    value: locale.locale,
                    groupValue: context.locale,
                    onChanged: (_) {},
                  ),
                  title: Text(locale.name),
                  onTap: () {
                    context.setLocale(locale.locale);
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
