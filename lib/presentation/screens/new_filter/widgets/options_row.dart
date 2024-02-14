import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';

class NewFilterOptionsRow extends StatefulWidget {
  NewFilterOptionsRow({
    super.key,
    required this.node,
    required this.callback,
    this.selectedKey
  });

  final OptionsTreeNode node;
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
          leading: Icon(nodeIcon(widget.node.name)),
          title: Text(widget.node.name.tr()),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: widget.node.options.keys
              .map(
                (key) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ChoiceChip(
                      showCheckmark: false,
                      label: Text(key.toString()),
                      selected: widget.selectedKey == key,
                      onSelected: (_) {
                        setState(() {
                          widget.selectedKey = key;
                          widget.callback(widget.node, widget.selectedKey);
                        });
                      }),
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
