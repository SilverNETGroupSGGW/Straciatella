import 'package:flutter/material.dart';

typedef RemovedItemBuilder<T> = Widget Function(
  T item,
  BuildContext context,
  Animation<double> animation,
);
