import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/task_widget.dart';

class TasksScreen extends StatelessWidget {
  final List<Task> tasksList;
  const TasksScreen({
    super.key,
    required this.tasksList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) => TaskWidget(
              task: tasksList[index],
              onStatusChanged: (bool value) {},
            ),
        separatorBuilder: (context, index) => SizedBox(height: 20.h),
        itemCount: tasksList.length);
  }
}
