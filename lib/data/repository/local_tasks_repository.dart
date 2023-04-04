import 'package:drift/drift.dart';
import 'package:second_task/data/datasource/local/tasks_database.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/domain/repository/i_tasks_repository.dart';

class LocalTasksRepository implements ITasksRepository {
  final tasksDatabase = TasksDatabase();

  @override
  Future<void> addTask(Task task) async =>
      await tasksDatabase.into(tasksDatabase.tasksTable).insert(
            TasksTableCompanion.insert(
              name: task.name,
              isCompleted: task.isCompleted,
              termDateTime: task.termDateTime,
            ),
          );

  @override
  Future<void> changeStatus({
    required int id,
    required bool isCompleted,
  }) async =>
      await (tasksDatabase.update(tasksDatabase.tasksTable)
            ..where(
              (task) => task.id.equals(id),
            ))
          .write(
        TasksTableCompanion(
          isCompleted: Value(isCompleted),
        ),
      );

  @override
  Future<List<Task>> getTasksList() async =>
      (await tasksDatabase.select(tasksDatabase.tasksTable).get())
          .map(
            (task) => Task(
              id: task.id,
              name: task.name,
              termDateTime: task.termDateTime,
              isCompleted: task.isCompleted,
            ),
          )
          .toList();
}
