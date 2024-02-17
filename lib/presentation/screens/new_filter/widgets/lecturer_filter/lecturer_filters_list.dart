import 'package:flutter/material.dart';
import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';

// ignore: must_be_immutable
class LecturerFiltersList extends StatefulWidget {
  LecturerFiltersList({super.key, required this.optionsTree});

  OptionsTreeNode optionsTree;

  @override
  State<LecturerFiltersList> createState() => _LecturerFiltersListState();
}

class _LecturerFiltersListState extends State<LecturerFiltersList>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
