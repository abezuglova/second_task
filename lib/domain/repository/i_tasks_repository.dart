import 'package:second_task/domain/entities/task.dart';

abstract class ITasksRepository {
  Future<String> addTask(Task task);
  Future<List<Task>> getTasksList();
  Future<void> changeStatus({
    required String id,
    required bool isCompleted,
  });
}
