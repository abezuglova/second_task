import 'package:second_task/data/datasource/remote/tasks_firebase_database.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

class RemoteTasksRepository implements ITasksRepository {
  final tasksDatabase = TasksFirebaseDatabase();

  @override
  Future<void> addTask(Task task) {
    throw UnimplementedError();
  }

  @override
  Future<void> changeStatus({required String id, required bool isCompleted}) {
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> getTasksList() async => await tasksDatabase.getTasksList();
}
