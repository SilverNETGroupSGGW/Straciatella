import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';

class GroupChip extends StatelessWidget {
  final StudentGroup group;
  const GroupChip(this.group, {super.key});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      onPressed: () {},
      label: Text(group.name),
      avatar: const Icon(Symbols.group),
    );
  }
}
