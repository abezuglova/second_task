import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/custom_checkbox_widget.dart';

class TaskWidget extends StatelessWidget {
  final Task task;
  final ValueChanged<bool> onStatusChanged;
  const TaskWidget({
    super.key,
    required this.task,
    required this.onStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        CustomCheckboxWidget(
          value: task.isDone,
          onChanged: (_) => onStatusChanged(task.isDone),
        ),
        SizedBox(width: 13.w),
        Expanded(
          child: Opacity(
            opacity: task.isDone ? 0.3 : 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.name,
                  style: textTheme.bodySmall?.copyWith(
                    decoration: task.isDone ? TextDecoration.lineThrough : null,
                  ),
                  maxLines: 10,
                ),
                Text(
                  '${task.creatingDateTime}',
                  style: textTheme.headlineSmall?.copyWith(
                    decoration: task.isDone ? TextDecoration.lineThrough : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
