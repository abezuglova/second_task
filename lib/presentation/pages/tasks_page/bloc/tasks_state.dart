part of 'tasks_bloc.dart';

@Freezed(equal: false)
class TasksState with _$TasksState {
  const factory TasksState.loadInProgress() = TasksLoadInProgress;
  const factory TasksState.loadSuccess({
    required List<Task> tasksList,
    @Default(false) bool isUpdateInProgress,
    Object? updatingError,
    @Default(true) bool areCompletedTasksShown,
    @Default(TasksBloc.defaultSort) TasksSortType sortType,
  }) = TasksLoadSuccess;
  const factory TasksState.loadFailure({
    required Object loadError,
  }) = TasksLoadFailure;
}

extension TasksStateX on TasksState {
  bool get hasCompletedTasks => this is TasksLoadSuccess
      ? (this as TasksLoadSuccess)
              .tasksList
              .where((task) => task.isCompleted)
              .isNotEmpty ||
          !(this as TasksLoadSuccess).areCompletedTasksShown
      : false;

  bool get shouldHideButtonBeDisplayed => this is TasksLoadSuccess
      ? (this as TasksLoadSuccess).areCompletedTasksShown
      : false;
}
