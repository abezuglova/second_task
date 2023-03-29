import 'package:flutter/material.dart';
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(27.w, 60.h, 14.w, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('My tasks', style: textTheme.headlineLarge,),
                  ],
                ),
                const TasksScreen(tasksList: []),
              ],
            ),
          ),
          const FloatingButtonsWidget(),
        ],
      ),
      bottomNavigationBar: const BottomTapBarWidget(),
    );
  }
}
