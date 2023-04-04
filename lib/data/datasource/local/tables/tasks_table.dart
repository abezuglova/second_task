import 'package:drift/drift.dart';

class TasksTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BoolColumn get isCompleted => boolean()();
  DateTimeColumn get termDateTime => dateTime()();
}
