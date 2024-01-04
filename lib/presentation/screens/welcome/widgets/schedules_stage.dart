import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SchedulesStage extends StatelessWidget {
  const SchedulesStage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.dashboard,
          size: 200,
        ),
        SizedBox(
          height: 250,
        ),
        Column(
          children: [
            Text(
              "schedules_stage_text".tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "schedules_stage_desc".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
