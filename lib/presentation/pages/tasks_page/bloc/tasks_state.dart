part of 'tasks_bloc.dart';

@Freezed(equal: false)
class TasksState with _$TasksState {
  const factory TasksState.loadInProgress() = _LoadInProgress;
  const factory TasksState.loadSuccess({
    required List<Task> tasksList,
    required bool showInstructions,
  }) = _LoadSuccess;
  const factory TasksState.loadFailure({
    required Object loadError,
  }) = _LoadFailure;
}
