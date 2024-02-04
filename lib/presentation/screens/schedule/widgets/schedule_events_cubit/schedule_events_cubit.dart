import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    this.scheduleKey, [
    SggwHubRepo? sggwHubRepo,
  ]) : super(const ScheduleEventsState.initial()) {
    _sggwHubRepo = sggwHubRepo ?? SggwHubRepo();

    if (!scheduleManager.state.schedules.containsKey(scheduleKey)) {
      refreshFromApi();
    }
    _subscription = scheduleManager.stream.listen((state) {
      // refresh cached schedule
      if (state.schedules.containsKey(scheduleKey)) {
        final schedule = state.schedules[scheduleKey]!;
        emit(
          _Loaded(
            events: ScheduleEvent.convertFromSchedule(schedule),
            fromSchedule: state.schedules[scheduleKey]!,
            isFromCache: true,
          ),
        );
      }
    });
  }

  Future<void> refreshFromApi() {
    return state.when(
      initial: () async {
        final schedule = await _sggwHubRepo.getScheduleByType(scheduleKey);
        emit(
          _Loaded(
            events: ScheduleEvent.convertFromSchedule(schedule),
            fromSchedule: schedule,
            isFromCache: false,
          ),
        );
      },
      loading: (_, __, ___) async {},
      loaded: (events, fromSchedule, isFromCache) async {
        emit(
          _Loading(
            events: events,
            fromSchedule: fromSchedule,
            isFromCache: isFromCache,
          ),
        );
        final schedule = await _sggwHubRepo.getScheduleByType(scheduleKey);
        emit(
          _Loaded(
            events: ScheduleEvent.convertFromSchedule(schedule),
            fromSchedule: schedule,
            isFromCache: false,
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
