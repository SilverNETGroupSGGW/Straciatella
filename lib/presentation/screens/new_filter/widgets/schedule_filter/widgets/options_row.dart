import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/cubits/user_choices/user_choices_cubit.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/schedule_filter/models/choice.dart';

// ignore: must_be_immutable
class NewFilterOptionsRow extends StatefulWidget {
  const NewFilterOptionsRow({
    super.key,
    required this.choiceIndex,
    this.animatedAddItem,
    this.animatedRemoveItem,
  });

  final int choiceIndex;
  final Function(int)? animatedAddItem;
  final Function(int)? animatedRemoveItem;

  @override
  State<NewFilterOptionsRow> createState() => _NewFilterOptionsRow();
}

class _NewFilterOptionsRow extends State<NewFilterOptionsRow> {
  void updateUserChoices(Choice currentChoice, dynamic newKey) {
    final UserChoicesCubit userChoicesCubit = context.read<UserChoicesCubit>();
    final List<Choice> userChoices = userChoicesCubit.state.userChoices;

    for (int i = userChoices.length - 1; i > widget.choiceIndex; i--) {
      widget.animatedRemoveItem?.call(i);
      userChoices.removeLast();
    }

    userChoices[widget.choiceIndex].selected = newKey;

    userChoices.add(
      Choice(level: currentChoice.level!.options[newKey], selected: null),
    );

    widget.animatedAddItem?.call(widget.choiceIndex + 1);
    userChoicesCubit.updateUserChoices(userChoices);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserChoicesCubit, UserChoicesState>(
      builder: (context, state) {
        final Choice choice = state.userChoices[widget.choiceIndex];

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
                        label: Text(key.toString().tr()),
                        selected: choice.selected == key,
                        onSelected: (_) {
                          setState(() {
                            updateUserChoices(choice, key);
                          });
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
    switch (nodeName) {
      case 'faculty':
        return Icons.apartment;
      case 'fieldOfStudy':
        return Icons.build;
      case 'studyMode':
        return Icons.calendar_month;
      case 'degreeOfStudy':
        return Icons.school;
      case 'semester':
        return Icons.numbers;
      default:
        return Icons.school;
    }
  }
}
