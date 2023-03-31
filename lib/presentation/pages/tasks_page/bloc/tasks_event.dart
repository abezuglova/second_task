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

enum TasksSortType {
  alphaSort,
  alphaReversedSort,
  timeSort,
}

extension TasksSortTypeX on TasksSortType {
  List<Task> sort(List<Task> tasksList) {
    tasksList = [...tasksList];
    switch (this) {
      case TasksSortType.alphaSort:
        return (tasksList
              ..sort(
                (task1, task2) => task1.name.toLowerCase().compareTo(
                      task2.name.toLowerCase(),
                    ),
              ))
            .toList();
      case TasksSortType.alphaReversedSort:
        return (tasksList
              ..sort(
                (task1, task2) => task2.name.toLowerCase().compareTo(
                      task1.name.toLowerCase(),
                    ),
              ))
            .toList();
      case TasksSortType.timeSort:
        return (tasksList
              ..sort(
                (task1, task2) => task1.termDateTime.compareTo(
                  task2.termDateTime,
                ),
              ))
            .toList();
    }
  }
}
