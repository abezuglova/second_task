import 'package:flutter/material.dart';
import 'package:second_task/pages/tasks_page/screens/tasks_screen.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TasksScreen(
      tasksList: [],
      showInstructions: true,
    );
  }
}
