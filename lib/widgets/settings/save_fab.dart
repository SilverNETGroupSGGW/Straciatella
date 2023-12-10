import 'package:flutter/material.dart';
import 'package:psggw/models/settings_model/bloc/settings_bloc.dart';

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
