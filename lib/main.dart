import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/pages/tasks_page/tasks_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11.58.r)),
                ),
                elevation: 0,
              ),
            ),
            textTheme: TextTheme(
              bodySmall: GoogleFonts.openSans(
                color: AppColors.mainTextColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                height: 20 / 15,
                letterSpacing: -0.24,
              ),
              bodyMedium: GoogleFonts.openSans(
                color: AppColors.systemButtonColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.normal,
                height: 22 / 17,
                letterSpacing: -0.41,
              ),
              bodyLarge: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 22.sp,
                fontWeight: FontWeight.normal,
                height: 28 / 22,
                letterSpacing: 0.35,
              ),
              headlineSmall: GoogleFonts.openSans(
                color: AppColors.dateTimeColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                height: 18 / 13,
                letterSpacing: -0.08,
              ),
              headlineMedium: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                height: 24 / 20,
                letterSpacing: 0.38,
              ),
              headlineLarge: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 34.sp,
                fontWeight: FontWeight.bold,
                height: 41 / 34,
                letterSpacing: 0.37,
              ),
              labelSmall: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 14.06.sp,
                fontWeight: FontWeight.w600,
                height: 18.2 / 14.06,
                letterSpacing: -0.34,
              ),
              labelMedium: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                height: 22 / 17,
                letterSpacing: -0.41,
              ),
              labelLarge: GoogleFonts.openSans(
                color: AppColors.textButtonColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),
            ).apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: TasksPage(),
    );
  }
}
