import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RefreshIndicator(
      onRefresh: () async {
        final tasksBloc = BlocProvider.of<TasksBloc>(context);
        tasksBloc.add(const TasksEvent.pageOpened());
        await tasksBloc.stream.first;
      },
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Center(
              child: Text(
                'Ошибка загрузки',
                style: textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
