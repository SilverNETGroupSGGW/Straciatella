import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/lesson_model.dart';
import 'package:psggw/models/schedule_model.dart';
import 'package:psggw/screens/settings_screen.dart';

import 'package:psggw/widgets/timeline/lesson_tile.dart';

class Timeline extends ConsumerWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Lesson> lessons = ref.watch(schedulesDataProvider)[0].lessons;
    return Scaffold(
        appBar: AppBar(
          title: Text('timeline'.tr()),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: ListView(
          children: [
            LessonTile(
              lesson: lessons[0],
            ),
            LessonTile(
              lesson: lessons[0],
              elevation: 0.6,
            ),
            LessonTile(
              lesson: lessons[0],
              elevation: 2,
            ),
          ],
        ));
  }
}
