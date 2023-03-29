import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/assets/app_images.dart';

class FloatingButtonsWidget extends StatelessWidget {
  const FloatingButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: SvgPicture.asset(
            AppImages.infoButton,
            width: 32.w,
            height: 32.w,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: SvgPicture.asset(
            AppImages.addButton,
            width: 20.35.w,
            height: 20.35.w,
          ),
        ),
      ],
    );
  }
}
