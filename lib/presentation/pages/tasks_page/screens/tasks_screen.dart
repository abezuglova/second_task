import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/domain/entities/task.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/task_widget.dart';

class TasksScreen extends StatelessWidget {
  final List<Task> tasksList;
  const TasksScreen({
    super.key,
    required this.tasksList,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final tasksBloc = BlocProvider.of<TasksBloc>(context);
        tasksBloc.add(const TasksEvent.pageOpened());
        await tasksBloc.stream.first;
      },
      child: ListView.separated(
          padding: EdgeInsets.fromLTRB(27.w, 41.h, 14.w, 0),
          itemBuilder: (BuildContext context, int index) => TaskWidget(
                task: tasksList[index],
                onStatusChanged: (bool value) {},
              ),
          separatorBuilder: (context, index) => SizedBox(height: 20.h),
          itemCount: tasksList.length),
    );
  }
}
