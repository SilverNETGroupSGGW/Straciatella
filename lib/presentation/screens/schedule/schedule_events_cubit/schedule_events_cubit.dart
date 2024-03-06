import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:silvertimetable/data/models/mixins.dart';
import 'package:silvertimetable/data/models/schedule_event/schedule_event.dart';
import 'package:silvertimetable/data/repositories/sggw_hub_repo.dart';
import 'package:silvertimetable/data/types.dart';
import 'package:silvertimetable/logic/schedule_manager/schedule_manager_bloc.dart';

part 'schedule_events_state.dart';
part 'schedule_events_cubit.freezed.dart';

class ScheduleEventsCubit extends Cubit<ScheduleEventsState> {
  late StreamSubscription<ScheduleManagerState> _subscription;
  final ScheduleKey scheduleKey;
  late final SggwHubRepo _sggwHubRepo;

  ScheduleEventsCubit(
    ScheduleManagerBloc scheduleManager,
    this.scheduleKey,
  ) : super(const ScheduleEventsState()) {
    _sggwHubRepo = GetIt.instance.get<SggwHubRepo>();
    _subscription = scheduleManager.stream.listen(_refresh);
    _refresh(scheduleManager.state);
  }

  void _refresh(ScheduleManagerState scheduleManagerState) {
    // refresh cached schedule
    final schedules = scheduleManagerState.schedules;
    if (schedules.containsKey(scheduleKey)) {
      final schedule = schedules[scheduleKey]!;
      emit(
        ScheduleEventsState(
          events: ScheduleEvent.convertFromSchedule(schedule),
          fromSchedule: schedules[scheduleKey],
          isFromCache: true,
        ),
      );
    } else {
      refreshFromApi();
    }
  }

  Future<void> refreshFromApi() async {
    if (state.isLoading) return;

    if (state.fromSchedule != null) {
      emit(state.copyWith(isLoading: true));
    }

    await _sggwHubRepo.getScheduleByType(scheduleKey).then((schedule) {
      emit(
        ScheduleEventsState(
          events: ScheduleEvent.convertFromSchedule(schedule),
          fromSchedule: schedule,
        ),
      );
    }).catchError((err) {
      emit(
        state.copyWith(
          isLoading: false,
          error: err,
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
