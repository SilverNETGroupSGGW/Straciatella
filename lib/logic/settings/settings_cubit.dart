import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hiveTypeIds.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends Cubit<SettingsState> {
  static const _boxKey = "settings";  
  final Box box = Hive.box(hiveBoxName);
  SettingsCubit() : super(SettingsState());

  @override
  void onChange(Change<SettingsState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(_boxKey, change.nextState);
  }

  loadSettings() {
    try {
      final loadedSettings = box.get(_boxKey);
      if (loadedSettings != null) {
        emit(loadedSettings);
      }
    } catch (e) {
      print("Could not load settings");
    }
  }

  changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(
      themeMode: themeMode,
    ));
  }

  changeThemeColor(Color color) {
    emit(state.copyWith(
      themeColor: color,
    ));
  }

  toggleDebugMode() {
    emit(state.copyWith(
      isDebugMode: state.isDebugMode,
    ));
  }

  completeFirstRun() {
    emit(state.copyWith(
      isFirstRun: false,
    ));
  }
}
