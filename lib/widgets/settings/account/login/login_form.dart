import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:psggw/data/apis.dart';
import 'package:psggw/models/account_model/account.dart';
import 'package:psggw/models/settings_model/settings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    // TODO: Add login logic
    Settings settings;
    Account account;
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: TextFormField(
                  key: ValueKey(settings.apiUrl), // to reset form on change
                  decoration: InputDecoration(
                    labelText: 'api_url'.tr(),
                  ),
                  initialValue: settings.apiUrl,
                  keyboardType: TextInputType.url,
                  autofillHints: const [AutofillHints.url],
                  onSaved: (value) {
                    // TODO: Set new api url
                  },
                  onChanged: (value) {
                    formKey.currentState!.reset();
                  },
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !Uri.parse(value).isAbsolute) {
                      return 'api_url_empty'.tr();
                    }
                    return null;
                  },
                ),
              ),
              ShowOfficialApisButton(),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
            initialValue: account.email,
            autofillHints: const [AutofillHints.email],
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) {
              // TODO: Set email
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'email_empty'.tr();
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'password'.tr(),
            ),
            autofillHints: const [AutofillHints.password],
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onSaved: (value) {
              // TODO: Set password
            },
            initialValue: account.password == "" ? "" : "**********",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'password_empty'.tr();
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

class ShowOfficialApisButton extends StatelessWidget {
  const ShowOfficialApisButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showAdaptiveDialog(
          context: context,
          builder: (context) {
            return ApiListDialog();
          },
        );
      },
      icon: const Icon(
        Icons.restore,
      ),
    );
  }
}

class ApiListDialog extends StatelessWidget {
  const ApiListDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('api_list'.tr()),
      icon: const Icon(Icons.language),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "api_list_desc".tr(),
          ),
          Divider(),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: apis.entries
                    .map(
                      (e) => ApiEntryTile(
                        name: e.key,
                        url: e.value,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('cancel'.tr()),
        ),
      ],
    );
  }
}

class ApiEntryTile extends StatelessWidget {
  const ApiEntryTile({
    super.key,
    required this.name,
    required this.url,
  });
  final String name, url;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
      ),
      subtitle: Text(
        url,
        overflow: TextOverflow.fade,
      ),
      onTap: () {
        // TODO: Set api url
        Navigator.of(context).pop();
      },
    );
  }
}
