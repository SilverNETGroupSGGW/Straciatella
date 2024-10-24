import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:silvertimetable/data/models/enums.dart';
import 'package:silvertimetable/data/models/mixins.dart';
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
  ) : super(ScheduleEventsState(key: scheduleKey)) {
    _sggwHubRepo = GetIt.instance.get<SggwHubRepo>();
    _subscription = scheduleManager.stream.listen(_refresh);
    _refresh(scheduleManager.state);
  }

  void _refresh(ScheduleManagerState scheduleManagerState) {
    // refresh cached schedule
    final desiredSchedule = switch (scheduleKey.type) {
      ScheduleType.lecturer =>
        scheduleManagerState.cachedLecturers[scheduleKey.id],
      ScheduleType.studyProgram =>
        scheduleManagerState.cachedStudyPrograms[scheduleKey.id],
    } as CollectLessonData?;
    if (desiredSchedule != null) {
      emit(
        ScheduleEventsState(
          schedule: desiredSchedule,
          isFromCache: true,
          key: scheduleKey,
        ),
      );
    } else {
      refreshFromApi();
    }
  }

  Future<void> refreshFromApi() async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));

    final apiReq = switch (scheduleKey.type) {
      ScheduleType.lecturer => _sggwHubRepo.getLecturer(scheduleKey.id),
      ScheduleType.studyProgram => _sggwHubRepo.getStudyProgram(scheduleKey.id),
    } as Future<CollectLessonData>;

    await apiReq.then((schedule) {
      emit(
        ScheduleEventsState(schedule: schedule, key: scheduleKey),
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
