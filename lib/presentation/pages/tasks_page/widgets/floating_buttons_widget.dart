import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/presentation/assets/app_images.dart';

class FloatingButtonsWidget extends StatelessWidget {
  const FloatingButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 685.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: const AssetImage(AppImages.infoIcon),
              width: 42.w,
              height: 42.w,
            ),
            Image(
              image: const AssetImage(AppImages.addIcon),
              width: 42.w,
              height: 42.w,
            ),
          ],
        ),
      ),
    );
  }
}
