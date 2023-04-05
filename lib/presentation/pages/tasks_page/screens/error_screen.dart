import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;
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
                l10n.loadingError,
                style: textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
