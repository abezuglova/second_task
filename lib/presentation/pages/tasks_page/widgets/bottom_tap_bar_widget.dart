import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/domain/entities/tasks_sort_type.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/assets/app_icons.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';

class BottomTapBarWidget extends StatelessWidget {
  final TasksSortType? sortType;
  const BottomTapBarWidget({super.key, required this.sortType});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Container(
      padding: EdgeInsets.fromLTRB(0, 9.h, 0, 16.w),
      decoration: BoxDecoration(
        color: AppColors.bottomTapBarColor.withOpacity(0.94),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, -0.5.h),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              bloc.add(
                const TasksEvent.tasksSortTypeChanged(
                  sortType: TasksSortType.alphaSort,
                ),
              );
            },
            child: SvgPicture.asset(
              AppIcons.alphaSortIcon,
              colorFilter: ColorFilter.mode(
                _getSortButtonColor(TasksSortType.alphaSort),
                BlendMode.srcIn,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              bloc.add(
                const TasksEvent.tasksSortTypeChanged(
                  sortType: TasksSortType.alphaReversedSort,
                ),
              );
            },
            child: SvgPicture.asset(
              AppIcons.alphaReversedSortIcon,
              colorFilter: ColorFilter.mode(
                _getSortButtonColor(TasksSortType.alphaReversedSort),
                BlendMode.srcIn,
              ),
            ),
          ),
          InkWell(
            onTap: () => bloc.add(
              const TasksEvent.tasksSortTypeChanged(
                sortType: TasksSortType.timeSort,
              ),
            ),
            child: SvgPicture.asset(
              AppIcons.timeSortIcon,
              colorFilter: ColorFilter.mode(
                _getSortButtonColor(TasksSortType.timeSort),
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getSortButtonColor(TasksSortType appliedSortType) =>
      appliedSortType == sortType ? AppColors.textButtonColor : Colors.black;
}
