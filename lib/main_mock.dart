import 'package:flutter/material.dart';
import 'package:second_task/data/repository/mock_tasks_repository.dart';
import 'package:second_task/presentation/tasks_app/tasks_app.dart';

void main() {
  runApp(
    TasksApp(
      tasksRepository: MockTasksRepository(),
    ),
  );
}
