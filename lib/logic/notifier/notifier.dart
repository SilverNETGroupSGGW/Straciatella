import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/generated/locale_keys.g.dart';

part 'notifier.freezed.dart';
part 'notifier.g.dart';

@freezed
class Notifier with _$Notifier {
  factory Notifier() = _Notifier;
  static void customNotification(String text, {SnackBarAction? action}) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(text),
        action: action,
      ),
    );
  }

  static void showPlanUpdated() {
    customNotification(LocaleKeys.notifier_plan_updated.tr());
  }

  static void showPlanDeleted() {
    customNotification(LocaleKeys.notifier_plan_deleted.tr());
  }

  static void showPlanAdded() {
    customNotification(LocaleKeys.notifier_plan_added.tr());
  }

  static void showPlansUpdated() {
    customNotification(LocaleKeys.notifier_plans_updated.tr());
  }

  static void showPlanError(String error) {
    customNotification(
      LocaleKeys.notifier_error_updating_plan.tr(),
      action: SnackBarAction(
        label: LocaleKeys.general_details.tr(),
        onPressed: () {
          showDialog(
            context: navigatorKey.currentContext!,
            builder: (context) => AlertDialog(
              title: Text(LocaleKeys.notifier_error_details.tr()),
              content: Text(error),
            ),
          );
        },
      ),
    );
  }

  factory Notifier.fromJson(Map<String, dynamic> json) =>
      _$NotifierFromJson(json);
}
