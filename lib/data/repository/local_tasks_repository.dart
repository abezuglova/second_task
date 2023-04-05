import 'package:second_task/data/datasource/local/drift_tasks_database.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

class LocalTasksRepository implements ITasksRepository {
  final tasksDatabase = DriftTasksDatabase();

  @override
  Future<String> addTask(Task task) async => await tasksDatabase.addTask(task);

  @override
  Future<void> changeStatus({
    required String id,
    required bool isCompleted,
  }) async =>
      await tasksDatabase.changeStatus(
        id: id,
        isCompleted: isCompleted,
      );

  @override
  Future<List<Task>> getTasksList() async => await tasksDatabase.getTasksList();
}
