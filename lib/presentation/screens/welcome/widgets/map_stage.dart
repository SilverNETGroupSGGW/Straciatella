import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MapStage extends StatelessWidget {
  const MapStage({
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
          Icons.map,
          size: 200,
        ),
        SizedBox(
          height: 250,
        ),
        Column(
          children: [
            Text(
              "map_stage_text".tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "map_stage_desc".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
