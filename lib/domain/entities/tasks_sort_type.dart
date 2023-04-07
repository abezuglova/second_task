import 'package:second_task/domain/entities/task.dart';

enum TasksSortType {
  alphaSort,
  alphaReversedSort,
  timeSort,
}

extension TasksSortTypeX on TasksSortType {
  List<Task> sort(List<Task> tasksList,
      {required bool areCompletedTasksShown}) {
    tasksList = [
      ...areCompletedTasksShown
          ? tasksList
          : tasksList.where(
              (task) => !task.isCompleted,
            ),
    ];
    switch (this) {
      case TasksSortType.alphaSort:
        return (tasksList..sort(_alphaSortComparator)).toList();
      case TasksSortType.alphaReversedSort:
        return (tasksList..sort(_alphaReversedSortComparator)).toList();
      case TasksSortType.timeSort:
        return (tasksList..sort(_timeSortComparator)).toList();
    }
  }

  int _statusComparator(
      Task task1, Task task2, int Function(Task, Task) compare) {
    if (task1.isCompleted == task2.isCompleted) {
      return compare(task1, task2);
    } else if (task1.isCompleted && !task2.isCompleted) {
      return 1;
    } else {
      return -1;
    }
  }

  int _alphaSortComparator(Task task1, Task task2) => _statusComparator(
        task1,
        task2,
        (task1, task2) => task1.name.toLowerCase().compareTo(
              task2.name.toLowerCase(),
            ),
      );

  int _alphaReversedSortComparator(Task task1, Task task2) => _statusComparator(
        task1,
        task2,
        (task1, task2) => task2.name.toLowerCase().compareTo(
              task1.name.toLowerCase(),
            ),
      );

  int _timeSortComparator(Task task1, Task task2) => _statusComparator(
        task1,
        task2,
        (task1, task2) => task2.termDateTime.compareTo(task1.termDateTime),
      );
}
