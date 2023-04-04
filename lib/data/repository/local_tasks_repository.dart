import 'package:second_task/data/datasource/local/tasks_database.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

class LocalTasksRepository implements ITasksRepository {
  final tasksDatabase = TasksDatabase();

  @override
  Future<void> addTask(Task task) async => await tasksDatabase.addTask(task);

  @override
  Future<void> changeStatus({
    required int id,
    required bool isCompleted,
  }) async =>
      await tasksDatabase.changeStatus(
        id: id,
        isCompleted: isCompleted,
      );

  @override
  Future<List<Task>> getTasksList() async => await tasksDatabase.getTasksList();
}
