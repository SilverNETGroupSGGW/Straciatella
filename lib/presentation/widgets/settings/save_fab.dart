import 'package:flutter/material.dart';
import 'package:psggw/logic/settings/settings_bloc.dart';

class SaveFab extends StatelessWidget {
  const SaveFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        SettingsEvent.saveRequested();
      },
      child: const Icon(Icons.save_outlined),
    );
  }
}
