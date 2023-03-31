import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

class MockTasksRepository implements ITasksRepository {
  final _tasksList = <Task>[
    Task(
      id: 0,
      name: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      termDateTime: DateTime.now(),
      isDone: false,
    ),
    Task(
      id: 1,
      name: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      termDateTime: DateTime.now(),
      isDone: true,
    ),
  ];

  @override
  Future<void> addTask(Task task) async {
    await Future.delayed(const Duration(seconds: 1));
    _tasksList.add(task.copyWith(id: _tasksList.length));
  }

  @override
  Future<void> changeStatus({required int id, required bool isDone}) async {
    await Future.delayed(const Duration(seconds: 1));
    final taskIndex = _tasksList.indexWhere((task) => task.id == id);
    _tasksList[taskIndex] = _tasksList[taskIndex].copyWith(isDone: isDone);
  }

  @override
  Future<List<Task>> getTasksList() async {
    await Future.delayed(const Duration(seconds: 1));
    return [..._tasksList];
  }
}
