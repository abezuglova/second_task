import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/presentation/assets/app_images.dart';

class FloatingButtonsWidget extends StatelessWidget {
  const FloatingButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: const AssetImage(AppImages.infoIcon),
          width: 52.w,
          height: 52.w,
        ),
        Image(
          image: const AssetImage(AppImages.addIcon),
          width: 52.w,
          height: 52.w,
        ),
      ],
    );
  }
}
