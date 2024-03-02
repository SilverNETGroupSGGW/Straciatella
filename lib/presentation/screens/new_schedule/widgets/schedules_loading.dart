import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SchedulesLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 10),
          Text('filter_loading'.tr()),
        ],
      ),
    );
  }
}
