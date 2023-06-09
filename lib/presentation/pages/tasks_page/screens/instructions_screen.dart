import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task/presentation/assets/app_images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.fromLTRB(27.w, 41.h, 14.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 153.w,
            child: Text(
              l10n.instructionsText,
              style: textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(32.w, 41.h, 0, 92.h),
              child: SvgPicture.asset(
                AppImages.arrow,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
