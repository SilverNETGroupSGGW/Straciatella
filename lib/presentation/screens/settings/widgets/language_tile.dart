import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(LocaleKeys.language.tr()),
      subtitle: Text(LocaleKeys.language_desc.tr()),
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
        title: Text(LocaleKeys.language.tr()),
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
