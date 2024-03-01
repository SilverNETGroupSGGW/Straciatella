import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';

class NewFilterOptionsRow extends StatelessWidget {
  const NewFilterOptionsRow({
    super.key,
    required this.choiceIndex,
    this.animatedAddItem,
    this.animatedRemoveItem,
  });

  final int choiceIndex;
  final Function(int)? animatedAddItem;
  final Function(int)? animatedRemoveItem;

  void updateUserChoices(
    Choice currentChoice,
    dynamic newKey,
    BuildContext context,
  ) {
    final UserChoicesCubit userChoicesCubit = context.read<UserChoicesCubit>();
    final List<Choice> userChoices = userChoicesCubit.state.userChoices;

    for (int i = userChoices.length - 1; i > choiceIndex; i--) {
      animatedRemoveItem?.call(i);
      userChoices.removeLast();
    }

    userChoices[choiceIndex].selected = newKey;

    userChoices.add(
      Choice(level: currentChoice.level!.options[newKey], selected: null),
    );

    animatedAddItem?.call(choiceIndex + 1);
    userChoicesCubit.updateUserChoices(userChoices);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserChoicesCubit, UserChoicesState>(
      builder: (context, state) {
        final Choice choice = state.userChoices[choiceIndex];

        return Column(
          children: [
            ListTile(
              leading: Icon(
                nodeIcon(choice.level!.name),
              ),
              title: Text(choice.level!.name.tr()),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: choice.level!.options.keys
                  .map(
                    (key) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ChoiceChip(
                        showCheckmark: false,
                        label: Text(key.toString()),
                        selected: choice.selected == key,
                        onSelected: (_) {
                          updateUserChoices(choice, key, context);
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
