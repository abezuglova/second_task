import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 60.h, 14.w, 40.h),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.information,
                  style: textTheme.headlineLarge,
                ),
                SizedBox(height: 41.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          l10n.infoParagraphOne,
                          style: textTheme.bodySmall,
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          l10n.infoParagraphTwo,
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
                    l10n.gotIt,
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
