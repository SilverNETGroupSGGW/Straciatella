import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_events/schedule_events_cubit.dart';

part 'schedule_filters_state.dart';
part 'schedule_filters_cubit.freezed.dart';
part 'schedule_filters_cubit.g.dart';

class ScheduleFiltersCubit extends Cubit<ScheduleFiltersState> {
  static const boxKey = "scheduleFilters";
  final Box box = GetIt.instance.get<Box>();
  final ScheduleKey scheduleKey;
  final ScheduleEventsCubit? scheduleEventsCubit;

  String get fullBoxKey => "$boxKey/${scheduleKey.type.name}_${scheduleKey.id}";

  ScheduleFiltersCubit({
    required this.scheduleKey,
    this.scheduleEventsCubit,
  }) : super(const ScheduleFiltersState());

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
      // TODO: check if selected filters still exists, if not load defaults
    } catch (e) {
      if (kDebugMode) {
        throw Exception("Error loading schedule filters from Hive: $e");
      }
      // TODO: handle exception
      return;
    }
  }

  void selectGroup(
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
