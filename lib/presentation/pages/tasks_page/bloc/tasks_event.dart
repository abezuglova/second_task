part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.pageOpened() = _PageOpened;
  const factory TasksEvent.taskAdded({
    required String taskName,
    required DateTime taskTerm,
  }) = _TaskAdded;
  const factory TasksEvent.taskStatusChanged({
    required bool isDone,
    required int id,
  }) = _TaskStatusChanged;
  const factory TasksEvent.showCompletedTasksStatusChanged({
    required bool showCompletedTasks,
  }) = _ShowCompletedTasksStatusChanged;
  const factory TasksEvent.tasksSortTypeChanged({
    required TasksSortType sortType,
  }) = _TasksSortTypeChanged;
}

