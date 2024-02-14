import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewFilterButton extends StatelessWidget {
  AddNewFilterButton({super.key, required this.pickedId});

  dynamic pickedId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(onPressed: () {
        Navigator.pop(context, pickedId);
      }, child: Text('add_new_filter_button_text'.tr())),
    );
  }
}
