import 'package:silvertimetable/data/models/options_tree/options_tree_node.dart';

class Choice {
  Choice({required this.level, required this.selected});

  OptionsTreeNode? level;
  dynamic selected;
}
