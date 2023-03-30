import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_images.dart';

class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(27.w, 41.h, 14.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 153.w,
            child: Text(
              'Looks like there is no tasks yet! Go ahead and push a plus button below',
              style: textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(32.w, 41.h, 0, 0),
            child: SizedBox(
              width: 232.w,
              height: 404.h,
              child: SvgPicture.asset(AppImages.arrow),
            ),
          ),
        ],
      ),
    );
  }
}
