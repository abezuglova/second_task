import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:second_task/data/datasource/local/tables/tasks_table.dart';
import 'package:second_task/domain/entities/task.dart';

part 'drift_tasks_database.g.dart';

@DriftDatabase(tables: [TasksTable])
class DriftTasksDatabase extends _$TasksDatabase {
  DriftTasksDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<String> addTask(Task task) async {
    final id = await into(tasksTable).insert(
      TasksTableCompanion.insert(
        name: task.name,
        isCompleted: task.isCompleted,
        termDateTime: task.termDateTime,
      ),
    );
    return id.toString();
  }

  Future<void> changeStatus({
    required String id,
    required bool isCompleted,
  }) async =>
      await (update(tasksTable)
            ..where(
              (task) => task.id.equals(
                int.parse(id),
              ),
            ))
          .write(
        TasksTableCompanion(
          isCompleted: Value(isCompleted),
        ),
      );

  Future<List<Task>> getTasksList() async => (await select(tasksTable).get())
      .map(
        (task) => Task(
          id: task.id.toString(),
          name: task.name,
          termDateTime: task.termDateTime,
          isCompleted: task.isCompleted,
        ),
      )
      .toList();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
