import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewFilterFAB extends StatelessWidget {
  const AddNewFilterFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.add),
      label: Text('add_new_filter_button_text'.tr()),
      foregroundColor: Theme.of(context).primaryColor,
      onPressed: () {},
    );
  }
}
