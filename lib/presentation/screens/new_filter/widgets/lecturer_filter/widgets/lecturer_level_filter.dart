import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/cubits/lecturer_picked/lecturer_picked_cubit.dart';

// ignore: must_be_immutable
class LecturerLevelFilter extends StatefulWidget {
  LecturerLevelFilter({super.key, required this.level});

  OptionsTreeNode level;

  @override
  State<LecturerLevelFilter> createState() => _LecturerLevelFilterState();
}

class _LecturerLevelFilterState extends State<LecturerLevelFilter> {
  dynamic selectedKey;

  late bool isLastBeforeId =
      widget.level.options[widget.level.options.keys.first]!.isLeaf;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: isLastBeforeId,
      leading: Icon(levelIcon(widget.level.name)),
      title: Text(widget.level.name),
      children: widget.level.options.keys
          .toList()
          .map(
            (key) => isLastBeforeId
                ? RadioListTile(
                    value: key,
                    groupValue: selectedKey,
                    onChanged: (value) => setState(() {
                      selectedKey = key;

                      final String lecturerId = widget.level
                          .options[widget.level.options.keys.first]!.leafValue
                          .toString();
                      context
                          .read<LecturerPickedCubit>()
                          .lecturerPicked(lecturerId);
                    }),
                    title: Text(key.toString()),
                  )
                : LecturerLevelFilter(level: widget.level.options[key]!),
          )
          .toList(),
    );
  }

  IconData levelIcon(String name) {
    switch (name) {
      case 'fullname':
        return Icons.person;
      default:
        return Icons.school;
    }
  }
}
