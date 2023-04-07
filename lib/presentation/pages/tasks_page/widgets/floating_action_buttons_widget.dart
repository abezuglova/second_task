import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_icons.dart';
import 'package:second_task/presentation/navigation/app_routes.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/add_task_widget.dart';

class FloatingActionButtonsWidget extends StatelessWidget {
  const FloatingActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          heroTag: 'info_button',
          onPressed: () => Navigator.of(context).pushNamed(
            AppRoutes.infoPageRoute,
          ),
          child: SvgPicture.asset(
            AppIcons.infoIcon,
            width: 32.w,
            height: 32.w,
          ),
        ),
        FloatingActionButton(
          heroTag: 'add_button',
          onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11.58.r),
                topRight: Radius.circular(11.58.r),
              ),
            ),
            builder: (_) => BlocProvider<TasksBloc>.value(
              value: context.read(),
              child: const AddTaskWidget(),
            ),
          ),
          child: SvgPicture.asset(
            AppIcons.addIcon,
            width: 20.35.w,
            height: 20.35.w,
          ),
        ),
      ],
    );
  }
}
