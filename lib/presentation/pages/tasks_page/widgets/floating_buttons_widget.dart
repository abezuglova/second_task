import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_images.dart';
import 'package:second_task/presentation/navigation/routes.dart';

class FloatingButtonsWidget extends StatelessWidget {
  const FloatingButtonsWidget({super.key});

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
            AppImages.infoButton,
            width: 32.w,
            height: 32.w,
          ),
        ),
        FloatingActionButton(
          heroTag: 'add_button',
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
