import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psggw/data/apis.dart';
import 'package:psggw/models/account_model/account.dart';
import 'package:psggw/models/account_model/bloc/account_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.formKey,
    required this.credentials,
  });

  final GlobalKey<FormState> formKey;
  final Map<String, String> credentials;
  @override
  Widget build(BuildContext context) {
    Account account = context.select((AccountBloc bloc) => bloc.state.maybeMap(
          loggedIn: (state) => state.account,
          orElse: () => Account.empty(),
        ));
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
                  key: ValueKey(account.apiURL), // to reset form on change
                  decoration: InputDecoration(
                    labelText: 'api_url'.tr(),
                  ),
                  initialValue: account.apiURL,
                  keyboardType: TextInputType.url,
                  autofillHints: const [AutofillHints.url],
                  onSaved: (value) {
                    AccountEvent.apiURLChanged(value!);
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
          EmailFormField(credentials: credentials),
          PasswordFormField(credentials: credentials),
        ],
      ),
    );
  }
}

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.credentials,
  });

  final Map<String, String> credentials;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'password'.tr(),
        hintText: '********'.tr(),
      ),
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      onSaved: (value) {
        credentials['password'] = value!;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'password_empty'.tr();
        }
        return null;
      },
    );
  }
}

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.credentials,
  });

  final Map<String, String> credentials;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email_hint'.tr(),
      ),
      autofillHints: const [AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        credentials['email'] = value!;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'email_empty'.tr();
        }
        return null;
      },
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
        context.read<AccountBloc>().add(AccountEvent.apiURLChanged(url));
        Navigator.of(context).pop();
      },
    );
  }
}
