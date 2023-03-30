part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.loadInProgress() = _LoadInProgress;
  const factory TasksState.loadSuccess({
    required List<Task> tasksList,
    required bool showInstructions,
  }) = _LoadSuccess;
  const factory TasksState.loadFailure({
    required Exception loadError,
  }) = _LoadFailure;
}
