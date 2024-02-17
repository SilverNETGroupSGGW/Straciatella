import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewFilterButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  AddNewFilterButton({super.key, required this.pickedId});

  final String pickedId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context, pickedId);
        },
        label: Text('add_new_filter_button_text'.tr()),
      ),
    );
  }
}
