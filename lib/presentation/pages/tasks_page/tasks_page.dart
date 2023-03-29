import 'package:flutter/material.dart';
import 'package:second_task/presentation/pages/tasks_page/screens/instructions_screen.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My tasks',
                      style: textTheme.headlineLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Hide complited',
                        style: textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.h),
                const InstructionsScreen(),
              ],
            ),
          ),
          Positioned(
              bottom: 20.h,
              left: 20.w,
              right: 20.w,
              child: const FloatingButtonsWidget()),
        ],
      ),
      bottomNavigationBar: const BottomTapBarWidget(),
    );
  }
}
