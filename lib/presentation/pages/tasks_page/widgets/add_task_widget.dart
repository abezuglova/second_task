import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:second_task/presentation/assets/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:second_task/presentation/pages/tasks_page/bloc/tasks_bloc.dart';
import 'package:second_task/presentation/pages/tasks_page/widgets/add_task_appbar_widget.dart';

class AddTaskWidget extends StatefulWidget {
  const AddTaskWidget({super.key});

  @override
  State<AddTaskWidget> createState() => _AddTaskWidgetState();
}

class _AddTaskWidgetState extends State<AddTaskWidget> {
  static final timeFormat = DateFormat('HH : mm');
  static final dateFormat = DateFormat('dd.MM.y');

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
    final l10n = AppLocalizations.of(context)!;
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
                      l10n.addATask,
                      style: textTheme.headlineLarge,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        l10n.name,
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
                              hintText: l10n.enterText,
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
                        l10n.time,
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
                              timeFormat.format(time),
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
                        l10n.date,
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
                              dateFormat.format(date),
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
                      onPressed: taskName.isEmpty
                          ? null
                          : () {
                              BlocProvider.of<TasksBloc>(context).add(
                                TasksEvent.taskAdded(
                                  taskName: taskName,
                                  taskTerm: DateTime(
                                    date.year,
                                    date.month,
                                    date.day,
                                    time.hour,
                                    time.minute,
                                    time.second,
                                  ),
                                ),
                              );
                              Navigator.of(context).pop();
                            },
                      child: Text(
                        l10n.done,
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
