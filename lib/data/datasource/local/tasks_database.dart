import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'tasks_database.g.dart';

class TasksTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BoolColumn get isCompleted => boolean()();
  DateTimeColumn get termDateTime => dateTime()();
}

@DriftDatabase(tables: [TasksTable])
class TasksDatabase extends _$TasksDatabase {
  TasksDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}