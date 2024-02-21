import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';
import 'package:silvertimetable/presentation/screens/new_filter/widgets/lecturer_filter/widgets/lecturer_options_tree_result.dart';

// ignore: must_be_immutable
class LecturerLevelFilter extends StatelessWidget {
  LecturerLevelFilter({
    super.key,
    this.initiallyExpanded = false,
    required this.level,
  });

  bool initiallyExpanded;
  OptionsTreeNode level;

  late bool isLastBeforeId = level.options[level.options.keys.first]!.isLeaf;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: initiallyExpanded,
      leading: Icon(levelIcon(level.name)),
      title: Text(level.name.tr()),
      children: level.options.keys
          .toList()
          .map(
            (key) => isLastBeforeId
                ? LecturerOptionsTreeResult(
                    level: level,
                    currentKey: key,
                  )
                : LecturerLevelFilter(level: level.options[key]!),
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
