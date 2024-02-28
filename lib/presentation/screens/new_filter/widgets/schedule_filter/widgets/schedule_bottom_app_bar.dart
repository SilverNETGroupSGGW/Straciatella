import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ScheduleBottomAppBar extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ScheduleBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          const Text('Wybierz wydział'),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: Text('add'.tr()),
          ),
        ],
      ),
    );
  }
}
