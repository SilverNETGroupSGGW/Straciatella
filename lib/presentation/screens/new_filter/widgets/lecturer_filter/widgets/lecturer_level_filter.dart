import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_options_tree_result.dart';

// ignore: must_be_immutable
class LecturerLevelFilter extends StatefulWidget {
  LecturerLevelFilter({super.key, required this.level});

  OptionsTreeNode level;

  @override
  State<LecturerLevelFilter> createState() => _LecturerLevelFilterState();
}

class _LecturerLevelFilterState extends State<LecturerLevelFilter> {
  // TODO: change to first tree level instead last before id
  late bool isLastBeforeId =
      widget.level.options[widget.level.options.keys.first]!.isLeaf;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: isLastBeforeId,
      leading: Icon(levelIcon(widget.level.name)),
      title: Text(widget.level.name.tr()),
      children: widget.level.options.keys
          .toList()
          .map(
            (key) => isLastBeforeId
                ? LecturerOptionsTreeResult(
                    level: widget.level,
                    currentKey: key,
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
