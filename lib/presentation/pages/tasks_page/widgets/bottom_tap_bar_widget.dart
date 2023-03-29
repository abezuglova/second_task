import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/assets/app_images.dart';

class BottomTapBarWidget extends StatelessWidget {
  const BottomTapBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          Image(
            image: const AssetImage(AppImages.alphaSortIcon),
            width: 40.w,
            height: 40.w,
          ),
          Image(
            image: const AssetImage(AppImages.alphaReversedSortIcon),
            width: 40.w,
            height: 40.w,
          ),
          Image(
            image: const AssetImage(AppImages.timeSortIcon),
            width: 40.w,
            height: 40.w,
          ),
        ],
      ),
    );
  }
}
