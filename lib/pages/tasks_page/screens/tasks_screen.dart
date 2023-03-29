import 'package:flutter/material.dart';
import 'package:second_task/domain/entities/task.dart';

class TasksScreen extends StatelessWidget {
  final List<Task> tasksList;
  final bool showInstructions;
  const TasksScreen({
    super.key,
    required this.tasksList,
    required this.showInstructions,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
