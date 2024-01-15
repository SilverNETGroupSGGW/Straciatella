import 'dart:collection';

/// Represents one node in a tree of options to choose\
///
/// [name] is a node name, usualy a property name of Schedule or Lecturer object\
/// [options] holds all the options that can be chosen where:
///   key is a value of chosen option
///   value is usually another OptionsTreeNode or if this node is a leaf it is null
class OptionsTreeNode<OptionValueType> {
  final String name;
  late final SplayTreeMap<OptionValueType, OptionsTreeNode?> options;
  OptionsTreeNode(
    this.name, [
    SplayTreeMap<OptionValueType, OptionsTreeNode?>? options,
  ]) {
    this.options = options ?? SplayTreeMap();
  }

  bool get isLeaf {
    return options.length == 1 && options.entries.first.value == null;
  }

  OptionValueType? get leafValue {
    if (isLeaf) {
      return options.entries.first.key;
    }
    return null;
  }

  @override
  bool operator ==(Object other) {
    if (other is! OptionsTreeNode) return false;
    if (name != other.name) return false;
    if (options.length != other.options.length) return false;

    return !other.options.entries.any(
      (element) =>
          !options.containsKey(element.key) ||
          options[element.key] != element.value,
    );
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString([int tabs = 0]) {
    final t = List.filled(tabs, " ").join();
    final optionsStr = leafValue ??
        "{\n$t ${options.entries.map(
              (o) => "${o.key} --> ${o.value?.toString(tabs + 1)}",
            ).join(",\n$t ")}\n$t}";
    return "$name: $optionsStr";
  }
}

void addOptionsToTree<T extends Enum>(
  OptionsTreeNode root,
  List<T> levels,
  Object Function(T level) mapLevelToValue, [
  int level = 0,
]) {
  final levelsCount = levels.length;

  final levelValue = mapLevelToValue(levels[level]);

  root.options.putIfAbsent(
    levelValue,
    () => level < levelsCount - 1
        ? OptionsTreeNode(levels[level + 1].name)
        : null,
  );

  if (root.options[levelValue] == null) return;
  addOptionsToTree(
    root.options[levelValue]!,
    levels,
    mapLevelToValue,
    level + 1,
  );
}
