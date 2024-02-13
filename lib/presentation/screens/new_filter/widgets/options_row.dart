import 'package:flutter/material.dart';

class NewFilterOptionsRow extends StatefulWidget {
  const NewFilterOptionsRow({
    super.key,
    required this.filterType,
    required this.chipTitles,
    required this.setTitle,
    required this.chipPressedCallback,
  });

  final String filterType;
  final List<String> chipTitles;
  final String setTitle;
  final Function chipPressedCallback;

  @override
  State<NewFilterOptionsRow> createState() => _NewFilterOptionsRow();
}

class _NewFilterOptionsRow extends State<NewFilterOptionsRow> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(leading: Icon(nodeIcon(widget.filterType)), title: Text(widget.setTitle)),
      Wrap(
        alignment: WrapAlignment.center,
        children: List<Widget>.generate(
          widget.chipTitles.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: ChoiceChip(
              showCheckmark: false,
              label: Text(widget.chipTitles[index]),
              selected: selectedIndex == index,
              onSelected: (value) => setState(() {
                selectedIndex = index;
                widget.chipPressedCallback(widget.filterType, widget.chipTitles[index]);
              }),
            ),
          ),
        ),
      )
    ]);
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
