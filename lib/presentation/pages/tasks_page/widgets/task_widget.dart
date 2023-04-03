import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
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
          value: task.isCompleted,
          onChanged: onStatusChanged,
        ),
        SizedBox(width: 13.w),
        Expanded(
          child: Opacity(
            opacity: task.isCompleted ? 0.3 : 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.name,
                  style: textTheme.bodySmall?.copyWith(
                    decoration: task.isCompleted ? TextDecoration.lineThrough : null,
                  ),
                  maxLines: 10,
                ),
                Text(
                  DateFormat('dd.MM.y HH:mm').format(task.termDateTime),
                  style: textTheme.headlineSmall?.copyWith(
                    decoration: task.isCompleted ? TextDecoration.lineThrough : null,
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
