import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:psggw/models/settings_model/settings.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(_Initial()) {
    on<_LoadRequested>(_onLoadRequested);
    on<_SaveRequested>(_onSaveRequested);
    on<_LocaleChanged>(_onLocaleChanged);
    on<_AutoThemeModeChanged>(_onAutoThemeModeChanged);
    on<_ThemeModeChanged>(_onThemeModeChanged);
    on<_ThemeColorChanged>(_onThemeColorChanged);
    on<_DebugModeChanged>(_onDebugModeChanged);
    on<_FirstRunChanged>(_onFirstRunChanged);
  }

  void _onLoadRequested(
      _LoadRequested event, Emitter<SettingsState> emit) async {
    emit(SettingsState.loading());
    await Hive.openBox<Settings>('settings');
    final settings = Hive.box<Settings>('settings').get('settings');
    if (settings == null) {
      emit(SettingsState.loaded(settings: Settings.empty()));
    } else {
      emit(SettingsState.loaded(settings: settings));
    }
  }

  void _onSaveRequested(
      _SaveRequested event, Emitter<SettingsState> emit) async {
    Settings settings = state.maybeMap(
      loaded: (state) => state.settings,
      orElse: () => Settings.empty(),
    );
    emit(SettingsState.saving());
    await Hive.openBox<Settings>('settings').then(
      (value) => value.put('settings', settings),
    );
    emit(SettingsState.loaded(settings: settings));
  }

  void _onLocaleChanged(_LocaleChanged event, Emitter<SettingsState> emit) {
    state.maybeMap(
      loaded: (state) {
        emit(state.copyWith(
            settings: state.settings.copyWith(locale: event.locale)));
      },
      orElse: () {},
    );
  }

  void _onAutoThemeModeChanged(
      _AutoThemeModeChanged event, Emitter<SettingsState> emit) {
    state.maybeMap(
      loaded: (state) {
        if (event.isAuto) {
          emit(state.copyWith(
              settings: state.settings.copyWith(themeMode: ThemeMode.system)));
        } else {
          var brightness =
              SchedulerBinding.instance.platformDispatcher.platformBrightness;
          bool isDarkMode = brightness == Brightness.dark;
          emit(
            state.copyWith(
              settings: state.settings.copyWith(
                themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
              ),
            ),
          );
        }
      },
      orElse: () {},
    );
  }

  void _onThemeModeChanged(
      _ThemeModeChanged event, Emitter<SettingsState> emit) {
    state.maybeMap(
      loaded: (state) {
        emit(state.copyWith(
            settings: state.settings.copyWith(themeMode: event.themeMode)));
      },
      orElse: () {},
    );
  }

  void _onThemeColorChanged(
      _ThemeColorChanged event, Emitter<SettingsState> emit) {
    state.maybeMap(
      loaded: (state) {
        emit(state.copyWith(
            settings: state.settings.copyWith(themeColor: event.themeColor)));
      },
      orElse: () {},
    );
  }

  void _onDebugModeChanged(
      _DebugModeChanged event, Emitter<SettingsState> emit) {
    state.maybeMap(
      loaded: (state) {
        emit(state.copyWith(
            settings: state.settings.copyWith(isDebugMode: event.isDebugMode)));
      },
      orElse: () {},
    );
  }

  void _onFirstRunChanged(_FirstRunChanged event, Emitter<SettingsState> emit) {
    state.maybeMap(
      loaded: (state) {
        emit(state.copyWith(
            settings: state.settings.copyWith(isFirstRun: !event.completed)));
      },
      orElse: () {},
    );
  }
}
