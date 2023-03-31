import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/error_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/instructions_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/loading_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/tasks_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/updating_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/bottom_tap_bar_widget.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/floating_buttons_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider<TasksBloc>(
      create: (context) => TasksBloc(context.read())
        ..add(
          const TasksEvent.pageOpened(),
        ),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(27.w, 60.h, 14.w, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My tasks',
                        style: textTheme.headlineLarge,
                      ),
                      BlocBuilder<TasksBloc, TasksState>(
                        builder: (context, state) => state.hasCompletedTasks
                            ? TextButton(
                                onPressed: () {
                                  context.read<TasksBloc>().add(
                                        TasksEvent
                                            .showCompletedTasksStatusChanged(
                                          showCompletedTasks: !state
                                              .shouldHideButtonBeDisplayed,
                                        ),
                                      );
                                },
                                child: Text(
                                  state.shouldHideButtonBeDisplayed
                                      ? 'Hide completed'
                                      : 'Show completed',
                                  style: textTheme.labelLarge,
                                ),
                              )
                            : const SizedBox(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: BlocConsumer<TasksBloc, TasksState>(
                    listenWhen: (previous, current) =>
                        current is TasksLoadSuccess &&
                        current.updatingError != null,
                    listener: (context, state) => showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: Text(
                            'Ошибка обновления данных',
                            style: textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    builder: (context, state) {
                      return state.map(
                        loadInProgress: (state) => const LoadingScreen(),
                        loadFailure: (state) => const ErrorScreen(),
                        loadSuccess: (state) => state.tasksList.isEmpty
                            ? const InstructionsScreen()
                            : UpdatingScreen(
                                isUpdateInProgress: state.isUpdateInProgress,
                                child: TasksScreen(
                                  tasksList: state.tasksList,
                                ),
                              ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20.h,
              left: 20.w,
              right: 20.w,
              child: const FloatingButtonsWidget(),
            ),
          ],
        ),
        bottomNavigationBar: BlocBuilder<TasksBloc, TasksState>(
          builder: (context, state) {
            return BottomTapBarWidget(
              sortType: state.maybeMap(
                loadSuccess: (state) => state.sortType,
                orElse: () => null,
              ),
            );
          },
        ),
      ),
    );
  }
}
