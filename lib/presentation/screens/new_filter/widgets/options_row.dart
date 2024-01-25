import 'package:flutter/material.dart';

class NewFilterOptionsRow extends StatefulWidget {
  const NewFilterOptionsRow(
      {super.key,
        required this.icon,
        required this.chipTitles,
        required this.setTitle});

  final IconData icon;
  final List<String> chipTitles;
  final String setTitle;

  @override
  State<NewFilterOptionsRow> createState() => _NewFilterOptionsRow();
}

class _NewFilterOptionsRow extends State<NewFilterOptionsRow> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(leading: Icon(widget.icon), title: Text(widget.setTitle)),
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
              }),
            ),
          ),
        ),
      )
    ]);
  }
}