import 'package:second_task/domain/entities/task.dart';

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
        return (tasksList..sort(_alphaSortComparator)).toList();
      case TasksSortType.alphaReversedSort:
        return (tasksList..sort(_alphaReversedSortComparator)).toList();
      case TasksSortType.timeSort:
        return (tasksList..sort(_timeSortComparator)).toList();
    }
  }

  int _alphaSortComparator(Task task1, Task task2) {
    if (task1.isCompleted == task2.isCompleted) {
      return task1.name.toLowerCase().compareTo(
            task2.name.toLowerCase(),
          );
    } else if (task1.isCompleted && !task2.isCompleted) {
      return 1;
    } else {
      return -1;
    }
  }

  int _alphaReversedSortComparator(Task task1, Task task2) {
    if (task1.isCompleted == task2.isCompleted) {
      return task2.name.toLowerCase().compareTo(
            task1.name.toLowerCase(),
          );
    } else if (task1.isCompleted && !task2.isCompleted) {
      return 1;
    } else {
      return -1;
    }
  }

  int _timeSortComparator(Task task1, Task task2) {
    if (task1.isCompleted == task2.isCompleted) {
      return task1.termDateTime.compareTo(task2.termDateTime);
    } else if (task1.isCompleted && !task2.isCompleted) {
      return 1;
    } else {
      return -1;
    }
  }
}
