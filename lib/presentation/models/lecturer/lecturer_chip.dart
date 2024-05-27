import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';

class LecturerChip extends StatelessWidget {
  final Lecturer lecturer;
  const LecturerChip(this.lecturer, {super.key});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      onPressed: () {},
      label: Text(
        "${lecturer.academicDegree} ${lecturer.firstName} ${lecturer.surName}",
      ),
      avatar: const Icon(Symbols.person),
    );
  }
}
