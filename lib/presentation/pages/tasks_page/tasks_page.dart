import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/error_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/instructions_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/loading_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/tasks_screen.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/bottom_tap_bar_widget.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/floating_buttons_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: BlocProvider<TasksBloc>(
        create: (context) => TasksBloc()..add(const TasksEvent.pageOpened()),
        child: Stack(
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
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hide completed',
                          style: textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: BlocBuilder<TasksBloc, TasksState>(
                    builder: (context, state) {
                      return state.map(
                        loadInProgress: (state) => const LoadingScreen(),
                        loadFailure: (state) => const ErrorScreen(),
                        loadSuccess: (state) => TasksScreen(
                          tasksList: state.tasksList,
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
                child: const FloatingButtonsWidget()),
          ],
        ),
      ),
      bottomNavigationBar: const BottomTapBarWidget(),
    );
  }
}
