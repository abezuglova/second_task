import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/assets/app_icons.dart';
import 'package:second_task/presentation/assets/app_strings.dart';

class AddTaskAppBarWidget extends StatelessWidget {
  const AddTaskAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 30.h, 0, 14.h),
          decoration: BoxDecoration(
            color: AppColors.bottomTapBarColor.withOpacity(0.94),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 0.5.h),
              ),
            ],
          ),
          child: Center(
            child: Text(
              AppStrings.task,
              style: textTheme.labelMedium,
            ),
          ),
        ),
        Positioned(
          left: 9.w,
          bottom: 12.h,
          child: TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.chevronLeftIcon),
                SizedBox(width: 5.w),
                Text(
                  AppStrings.close,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
