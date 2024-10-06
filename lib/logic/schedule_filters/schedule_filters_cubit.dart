import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';

part 'schedule_filters_state.dart';
part 'schedule_filters_cubit.freezed.dart';
part 'schedule_filters_cubit.g.dart';

class ScheduleFiltersCubit extends Cubit<ScheduleFiltersState> {
  static const boxKey = "scheduleFilters";
  final Box box = GetIt.instance.get<Box>();
  final ScheduleKey scheduleKey;
  late final ScheduleEventsCubit? _scheduleEventsCubit;
  late final StreamSubscription? scheduleEventsCubitSubscription;

  String get fullBoxKey => "$boxKey/${scheduleKey.type.name}_${scheduleKey.id}";

  ScheduleFiltersCubit({
    required this.scheduleKey,
    ScheduleEventsCubit? scheduleEventsCubit,
  }) : super(const ScheduleFiltersState()) {
    _scheduleEventsCubit = scheduleEventsCubit;
    scheduleEventsCubitSubscription = scheduleEventsCubit?.stream.listen(
      (state) {
        if (state.schedule == null) return;
        _verifyFiltersWith(state.schedule!);
      },
    );
  }

  @override
  Future<void> close() {
    scheduleEventsCubitSubscription?.cancel();
    return super.close();
  }

  @override
  void onChange(Change<ScheduleFiltersState> change) {
    // Always call super.onChange with the current change
    super.onChange(change);

    // Custom onChange logic goes here
    box.put(fullBoxKey, change.nextState.toJson());
  }

  void load() {
    try {
      final ScheduleFiltersState? loadedState = ScheduleFiltersState.fromJson(
        box.get(fullBoxKey) as Map<String, dynamic>,
      ) as ScheduleFiltersState?;
      if (loadedState != null) emit(loadedState);
      if (_scheduleEventsCubit != null &&
          _scheduleEventsCubit!.state.schedule != null) {
        _verifyFiltersWith(_scheduleEventsCubit!.state.schedule!);
      }
    } catch (e) {
      if (kDebugMode) {
        throw Exception("Error loading schedule filters from Hive: $e");
      }
      // TODO: handle exception
      return;
    }
  }

  void _verifyFiltersWith(CollectLessonData schedule) {
    final nextVisibleGroups = [...state.visibleGroups]
        .where(
          (group) => schedule.filters.containsStudentGroup(
            group.studyProgramId,
            group.studySemesterId,
            group.groupId,
          ),
        )
        .toList();
    emit(
      state.copyWith(
        visibleGroups: nextVisibleGroups,
      ),
    );
  }

  void selectGroup(
    String studyProgramId,
    String studySemesterId,
    String groupId,
  ) {
    final nextVisibleGroups = [...state.visibleGroups]
        .where(
          (group) => group.studySemesterId != studySemesterId,
        )
        .toList()
      ..add(
        (
          studyProgramId: studyProgramId,
          studySemesterId: studySemesterId,
          groupId: groupId,
        ),
      );
    emit(
      state.copyWith(
        visibleGroups: nextVisibleGroups,
      ),
    );
  }
}
