import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/constants.dart';

part 'notifier.freezed.dart';
part 'notifier.g.dart';

@freezed
class Notifier with _$Notifier {
  factory Notifier() = _Notifier;
  static void showSnackBar(String text) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(text),
      ),
    );
  }

  factory Notifier.fromJson(Map<String, dynamic> json) =>
      _$NotifierFromJson(json);
}
