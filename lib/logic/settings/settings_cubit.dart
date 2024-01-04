import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/hive_type_ids.dart';
import 'package:silvertimetable/themes.dart';

part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  static const _boxKey = "settings";
  final Box box = Hive.box(hiveBoxName);
  SettingsCubit() : super(SettingsState());

  @override
  void onChange(Change<SettingsState> change) {
    super.onChange(change);
    box.put(_boxKey, change.nextState);
  }

  void loadSettings() {
    try {
      final SettingsState loadedSettingsState =
          box.get(_boxKey) as SettingsState? ?? state;
      emit(loadedSettingsState);
    } catch (e) {
      if (kDebugMode) {
        print("Could not load settings");
      }
      // TODO: handle exception
    }
  }

  void changeThemeMode(ThemeMode themeMode) {
    emit(
      state.copyWith(
        themeMode: themeMode,
      ),
    );
  }

  void toggleHideFab() {
    emit(
      state.copyWith(
        isFabHidden: !state.isFabHidden,
      ),
    );
  }

  void changeThemeType(ThemeType themeType) {
    emit(
      state.copyWith(
        themeType: themeType,
      ),
    );
  }

  void changeThemeColor(Color color) {
    emit(
      state.copyWith(
        themeColor: color,
      ),
    );
  }

  void toggleDebugMode() {
    emit(
      state.copyWith(
        isDebugMode: !state.isDebugMode,
      ),
    );
  }

  void completeFirstRun() {
    emit(
      state.copyWith(
        isFirstRun: false,
      ),
    );
  }
}
