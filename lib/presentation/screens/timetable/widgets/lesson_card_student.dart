import 'package:flutter/material.dart';
import 'package:silvertimetable/presentation/widgets/faded_text.dart';
import 'package:silvertimetable/presentation/widgets/icon_with_text.dart';

class LessonCardStudent extends StatelessWidget {
  // TODO: gdy będą modele lekcji to będzie trzeba to przerobić
  final double elevation;
  final String name;
  final String classroom;
  final List<String> lecturers;
  final List<String> groups;
  final String? comment;

  const LessonCardStudent({
    super.key,
    this.elevation = 0,
    required this.name,
    required this.classroom,
    required this.lecturers,
    required this.groups,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;

    return Expanded(
      child: Card(
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadedText(
                      text: name,
                      textStyle: bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconWithText(
                                icon: Icons.location_on,
                                text: classroom,
                                textStyle: bodySmall,
                              ),
                              IconWithText(
                                icon: Icons.person,
                                text: lecturers.isNotEmpty
                                    ? lecturers.join(", ")
                                    : 'Brak prowadzącego',
                                textStyle: bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconWithText(
                                reverse: true,
                                icon: Icons.group,
                                text: groups.isNotEmpty
                                    ? groups.join(", ")
                                    : 'Brak grupy',
                                textStyle: bodySmall,
                              ),
                              IconWithText(
                                reverse: true,
                                icon: Icons.comment,
                                text: comment ?? 'Brak komentarza',
                                textStyle: bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
