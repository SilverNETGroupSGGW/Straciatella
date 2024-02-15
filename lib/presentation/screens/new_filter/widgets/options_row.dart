import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';

// ignore: must_be_immutable
class NewFilterOptionsRow extends StatefulWidget {
  NewFilterOptionsRow({
    super.key,
    required this.level,
    required this.callback,
    this.selectedKey,
  });

  final OptionsTreeNode level;
  final Function callback;
  dynamic selectedKey;

  @override
  State<NewFilterOptionsRow> createState() => _NewFilterOptionsRow();
}

class _NewFilterOptionsRow extends State<NewFilterOptionsRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(nodeIcon(widget.level.name)),
          title: Text(widget.level.name.tr()),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: widget.level.options.keys
              .map(
                (key) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ChoiceChip(
                    showCheckmark: false,
                    label: Text(key.toString().tr()),
                    selected: widget.selectedKey == key,
                    onSelected: (_) {
                      setState(() {
                        widget.selectedKey = key;
                        widget.callback(widget.level, widget.selectedKey);
                      });
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ],
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
