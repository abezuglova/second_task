import 'package:second_task/domain/entities/task.dart';

abstract class ITasksRepository {
  Future<void> addTask(Task task);
  Future<List<Task>> getTasksList();
  Future<void> changeStatus({
    required int id,
    required bool isDone,
  });
}
