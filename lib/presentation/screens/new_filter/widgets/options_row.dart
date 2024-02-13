import 'dart:collection';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NewFilterOptionsRow extends StatefulWidget {
  const NewFilterOptionsRow({
    super.key,
    required this.filterName,
    required this.filterOptions,
    required this.callback,
  });

  final String filterName;
  final SplayTreeMap filterOptions;
  final Function callback;

  @override
  State<NewFilterOptionsRow> createState() => _NewFilterOptionsRow();
}

class _NewFilterOptionsRow extends State<NewFilterOptionsRow> {
  dynamic selectedKey = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(nodeIcon(widget.filterName)),
          title: Text(widget.filterName.tr()),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: widget.filterOptions.keys
              .map(
                (key) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ChoiceChip(
                      showCheckmark: false,
                      label: Text(key.toString()),
                      selected: selectedKey == key,
                      onSelected: (_) {
                        setState(() {
                          selectedKey = key;
                          widget.callback(selectedKey);
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
