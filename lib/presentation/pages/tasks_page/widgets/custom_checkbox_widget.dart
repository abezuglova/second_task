import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/assets/app_images.dart';

class CustomCheckboxWidget extends StatelessWidget {
  final bool value;
  final ValueChanged onChanged;
  const CustomCheckboxWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(6.r));
    return Material(
      color: value ? Colors.black : Colors.white,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: () {},
        borderRadius: borderRadius,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.h),
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: value ? Colors.black : AppColors.checkboxBorderColor,
            ),
            borderRadius: borderRadius,
          ),
          child: value ? SvgPicture.asset(AppImages.daw) : null,
        ),
      ),
    );
  }
}
