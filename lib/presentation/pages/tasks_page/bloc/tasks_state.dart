part of 'tasks_bloc.dart';

@Freezed(equal: false)
class TasksState with _$TasksState {
  const factory TasksState.loadInProgress() = TasksLoadInProgress;
  const factory TasksState.loadSuccess({
    required List<Task> tasksList,
    required bool showInstructions,
    @Default(false) bool isUpdateInProgress,
    Object? updatingError,
  }) = TasksLoadSuccess;
  const factory TasksState.loadFailure({
    required Object loadError,
  }) = TasksLoadFailure;
}
