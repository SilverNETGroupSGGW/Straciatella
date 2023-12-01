import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:psggw/models/lesson.dart';
import 'package:psggw/screens/settings.dart';
import 'package:psggw/widgets/timetable/lesson_card.dart';

class Timeline extends ConsumerWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Lesson> lessons = ref.watch(lessonsDataProvider);
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
          children: lessons
              .map(
                (lesson) => LessonCard(
                  lesson: lesson,
                ),
              )
              .toList()),
    );
  }
}
