import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task/presentation/assets/app_strings.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 60.h, 14.w, 40.h),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.information,
                  style: textTheme.headlineLarge,
                ),
                SizedBox(height: 41.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          AppStrings.infoParagraphOne,
                          style: textTheme.bodySmall,
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          AppStrings.infoParagraphTwo,
                          style: textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: 315.w,
                height: 46.h,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    AppStrings.gotIt,
                    style: textTheme.labelSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
