import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/presentation/screens/new_schedule/widgets/student_schedule/cubits/user_choices/user_choices_cubit.dart';

class StudentScheduleOptionsRow extends StatelessWidget {
  const StudentScheduleOptionsRow({
    super.key,
    required this.choiceIndex,
    required this.level,
  });

  final int choiceIndex;
  final OptionsTreeNode level;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserChoicesCubit, UserChoicesState>(
      builder: (context, state) {
        final selectedKey =
            state.pickedKeys.isNotEmpty ? state.pickedKeys[choiceIndex] : null;
        return Column(
          children: [
            ListTile(
              leading: Icon(
                nodeIcon(level.name),
              ),
              title: Text(level.name.tr()),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: level.options.keys
                  .map(
                    (key) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        showCheckmark: false,
                        label: Text(key.toString()),
                        selected: selectedKey == key,
                        onSelected: (_) {
                          context
                              .read<UserChoicesCubit>()
                              .selectChoiceOnLevel(key, choiceIndex);
                        },
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );
  }

  IconData nodeIcon(String nodeName) {
    return switch (nodeName) {
      'faculty' => Symbols.apartment,
      'fieldOfStudy' => Symbols.build,
      'studyMode' => Symbols.calendar_month,
      'degreeOfStudy' => Symbols.school,
      'semester' => Symbols.numbers,
      _ => Symbols.school,
    };
  }
}
