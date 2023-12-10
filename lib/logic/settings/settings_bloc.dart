import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:psggw/data/converters/color_converter.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';
part 'settings_bloc.g.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(_Initial()) {
    on<_LoadRequested>(_onLoadRequested);
    on<_SaveRequested>(_onSaveRequested);
    on<_AutoThemeModeChanged>(_onAutoThemeModeChanged);
    on<_ThemeModeChanged>(_onThemeModeChanged);
    on<_ThemeColorChanged>(_onThemeColorChanged);
    on<_DebugModeChanged>(_onDebugModeChanged);
    on<_FirstRunChanged>(_onFirstRunChanged);
  }

  void _onLoadRequested(
      _LoadRequested event, Emitter<SettingsState> emit) async {
    await Hive.openBox<SettingsState>('settings');
    final loadedSettings = Hive.box<SettingsState>('settings').get('settings');
    if (loadedSettings == null) {
      emit(SettingsState.loaded());
    } else {
      emit(loadedSettings);
    }
  }

  void _onSaveRequested(
      _SaveRequested event, Emitter<SettingsState> emit) async {
    await Hive.openBox('settings').then(
      (value) => value.put('settings', state),
    );
  }

  void _onAutoThemeModeChanged(
      _AutoThemeModeChanged event, Emitter<SettingsState> emit) {
    if (state is _Loaded) {
      final s = state as _Loaded;
      if (event.isAuto) {
        emit(s.copyWith(
          themeMode: ThemeMode.system,
        ));
      } else {
        var brightness =
            SchedulerBinding.instance.platformDispatcher.platformBrightness;
        bool isDarkMode = brightness == Brightness.dark;
        emit(s.copyWith(
          themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        ));
      }
    }
  }

  void _onThemeModeChanged(
      _ThemeModeChanged event, Emitter<SettingsState> emit) {
    if (state is _Loaded) {
      final s = state as _Loaded;
      emit(s.copyWith(
        themeMode: event.themeMode,
      ));
    }
  }

  void _onThemeColorChanged(
      _ThemeColorChanged event, Emitter<SettingsState> emit) {
    if (state is _Loaded) {
      final s = state as _Loaded;
      emit(s.copyWith(
        themeColor: event.themeColor,
      ));
    }
  }

  void _onDebugModeChanged(
      _DebugModeChanged event, Emitter<SettingsState> emit) {
    if (state is _Loaded) {
      final s = state as _Loaded;
      emit(s.copyWith(
        isDebugMode: event.isDebugMode,
      ));
    }
  }

  void _onFirstRunChanged(_FirstRunChanged event, Emitter<SettingsState> emit) {
    if (state is _Loaded) {
      final s = state as _Loaded;
      emit(s.copyWith(
        isFirstRun: !event.completed,
      ));
    }
  }
}
