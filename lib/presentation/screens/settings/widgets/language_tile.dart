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
        showLanguageDialog(context).then((locale) {
          if (locale != null) {
            context.setLocale(locale);
          }
        });
      },
    );
  }

  Future<Locale?> showLanguageDialog(BuildContext context) {
    return showDialog<Locale>(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: const EdgeInsets.symmetric(vertical: 24),
        title: Text(LocaleKeys.language.tr()),
        icon: const Icon(Icons.language),
        content: SingleChildScrollView(
          child: Column(
            children: [
              for (final locale in supportedLocale)
                RadioListTile(
                  value: locale.locale,
                  groupValue: context.locale,
                  title: Text(locale.name),
                  onChanged: (locale) {
                    Navigator.pop(context, locale);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
