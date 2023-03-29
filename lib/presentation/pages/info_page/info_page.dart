import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              children: [
                Text(
                  'My tasks',
                  style: textTheme.headlineLarge,
                ),
                ListView(
                  children: [
                    SizedBox(height: 41.h),
                    Text(
                      'Praesent ultricies lacus in ligula volutpat feugiat. In hac habitasse platea dictumst. In hac habitasse platea dictumst. Fusce luctus justo eget nisi hendrerit, quis aliquam arcu porta. Cras ultricies, elit sit amet cursus consectetur, risus felis ullamcorper nulla, ut scelerisque sapien lorem non sem. Integer vestibulum ornare ligula, a placerat lectus volutpat ultrices. Aliquam commodo malesuada purus a mollis. Vestibulum pulvinar aliquam libero eu consequat.',
                      style: textTheme.bodySmall,
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      'Cras massa orci, ultrices sed scelerisque id, semper vel neque. Proin a turpis quis nibh cursus hendrerit sit amet vel libero. Nullam sit amet laoreet ante. Mauris sit amet mi vitae arcu dignissim porttitor et in arcu. Nullam eleifend molestie arcu, pretium fermentum orci feugiat eget. Integer dapibus tincidunt ipsum, at rutrum magna rutrum at. Quisque pretium convallis vestibulum.',
                      style: textTheme.bodySmall,
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: 315.w,
                height: 46.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Got it!',
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
