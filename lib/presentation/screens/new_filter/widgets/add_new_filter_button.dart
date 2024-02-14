import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewFilterButton extends StatelessWidget {
  AddNewFilterButton({super.key, required this.pickedId});

  dynamic pickedId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: ElevatedButton.icon(
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context, pickedId);
        },
        label: Text('add_new_filter_button_text'.tr()),
      ),
    );
  }
}
