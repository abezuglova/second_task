import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_task/domain/entities/tasks_sort_type.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/error_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/instructions_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/loading_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/tasks_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/updating_screen_wrapper.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/bottom_tap_bar_widget.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/floating_action_buttons_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;
    return BlocProvider<TasksBloc>(
      create: (context) => TasksBloc(context.read())
        ..add(
          const TasksEvent.pageOpened(),
        ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(27.w, 37.h, 14.w, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.myTasks,
                          style: textTheme.headlineLarge,
                        ),
                        BlocBuilder<TasksBloc, TasksState>(
                          builder: (context, state) => state.hasCompletedTasks
                              ? TextButton(
                                  onPressed: () => context.read<TasksBloc>().add(
                                        TasksEvent
                                            .showCompletedTasksStatusChanged(
                                          showCompletedTasks:
                                              !state.shouldHideButtonBeDisplayed,
                                        ),
                                      ),
                                  child: Text(
                                    state.shouldHideButtonBeDisplayed
                                        ? l10n.hideCompleted
                                        : l10n.showCompleted,
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
                              l10n.dataUpdateError,
                              style: textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      builder: (context, state) => state.map(
                        loadInProgress: (state) => const LoadingScreen(),
                        loadFailure: (state) => const ErrorScreen(),
                        loadSuccess: (state) => state.tasksList.isEmpty
                            ? const InstructionsScreen()
                            : UpdatingScreenWrapper(
                                isUpdateInProgress: state.isUpdateInProgress,
                                child: TasksScreen(
                                  tasksList: state.tasksList,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20.h,
                left: 20.w,
                right: 20.w,
                child: const FloatingActionButtonsWidget(),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            BlocSelector<TasksBloc, TasksState, TasksSortType?>(
          selector: (state) => state.appliedSortType,
          builder: (context, sortType) => BottomTapBarWidget(
            sortType: sortType,
          ),
        ),
      ),
    );
  }
}
