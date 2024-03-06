import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer_base.dart';

class LecturerChip extends StatelessWidget {
  final LecturerBase lecturer;
  const LecturerChip(this.lecturer, {super.key});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      onPressed: () {},
      label: Text(lecturer.toPrettyString()),
      avatar: const Icon(Symbols.person),
    );
  }
}
