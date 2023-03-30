import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/add_task_appbar_widget.dart';

class AddTaskWidget extends StatefulWidget {
  const AddTaskWidget({super.key});

  @override
  State<AddTaskWidget> createState() => _AddTaskWidgetState();
}

class _AddTaskWidgetState extends State<AddTaskWidget> {
  String taskName = '';
  DateTime time = DateTime.now();
  DateTime date = DateTime.now();

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final decoration = BoxDecoration(
      color: AppColors.timePickerColor.withOpacity(0.12),
      borderRadius: BorderRadius.all(Radius.circular(6.r)),
    );
    final textFieldBorderDecoration = UnderlineInputBorder(
      borderSide: BorderSide(
        width: 0.38.h,
        color: Colors.black.withOpacity(0.2),
      ),
    );
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        width: 375.w,
        height: 773.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(11.58.r),
            topRight: Radius.circular(11.58.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AddTaskAppBarWidget(),
            Padding(
              padding: EdgeInsets.fromLTRB(29.w, 0, 34.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 37.h),
                    child: Text(
                      'Add a task',
                      style: textTheme.headlineLarge,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Name',
                        style: textTheme.headlineMedium,
                      ),
                      SizedBox(width: 11.h),
                      Expanded(
                        child: SizedBox(
                          height: 27.h,
                          child: TextField(
                            onChanged: (value) => setState(() {
                              taskName = value;
                            }),
                            style: textTheme.bodySmall
                                ?.copyWith(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Lorem ipsum dolor sit amet',
                              hintStyle: textTheme.bodySmall,
                              border: textFieldBorderDecoration,
                              focusedBorder: textFieldBorderDecoration,
                              enabledBorder: textFieldBorderDecoration,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 10.h),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.75.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Time',
                        style: textTheme.headlineMedium,
                      ),
                      SizedBox(width: 22.h),
                      GestureDetector(
                        onTap: () => _showDialog(
                          CupertinoDatePicker(
                            initialDateTime: time,
                            mode: CupertinoDatePickerMode.time,
                            use24hFormat: true,
                            onDateTimeChanged: (DateTime newTime) {
                              setState(() => time = newTime);
                            },
                          ),
                        ),
                        child: Container(
                          width: 86.w,
                          height: 36.h,
                          decoration: decoration,
                          child: Center(
                            child: Text(
                              DateFormat('HH : mm').format(time),
                              style: textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 28.25.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Date',
                        style: textTheme.headlineMedium,
                      ),
                      SizedBox(width: 24.h),
                      GestureDetector(
                        onTap: () => _showDialog(
                          CupertinoDatePicker(
                            initialDateTime: date,
                            mode: CupertinoDatePickerMode.date,
                            use24hFormat: true,
                            onDateTimeChanged: (DateTime newDate) {
                              setState(() => date = newDate);
                            },
                          ),
                        ),
                        child: Container(
                          width: 163.w,
                          height: 36.h,
                          decoration: decoration,
                          child: Center(
                            child: Text(
                              DateFormat('dd.MM.y').format(date),
                              style: textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 57.h),
                  SizedBox(
                    width: 316.w,
                    height: 46.32.h,
                    child: ElevatedButton(
                      onPressed: taskName.isEmpty ? null : () {},
                      child: Text(
                        'Done',
                        style: textTheme.labelSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}