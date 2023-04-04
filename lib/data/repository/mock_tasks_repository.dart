import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

class MockTasksRepository implements ITasksRepository {
  final _tasksList = <Task>[
    Task(
      id: '0',
      name: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      termDateTime: DateTime.now(),
      isCompleted: false,
    ),
    Task(
      id: '1',
      name: 'Ipsum dolor sit amet, consectetur adipiscing elit',
      termDateTime: DateTime.now(),
      isCompleted: true,
    ),
  ];

  @override
  Future<void> addTask(Task task) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _tasksList.add(task.copyWith(id: _tasksList.length.toString()));
  }

  @override
  Future<void> changeStatus({required String id, required bool isCompleted}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final taskIndex = _tasksList.indexWhere((task) => task.id == id);
    _tasksList[taskIndex] = _tasksList[taskIndex].copyWith(isCompleted: isCompleted);
  }

  @override
  Future<List<Task>> getTasksList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [..._tasksList];
  }
}
