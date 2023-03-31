import 'package:flutter/material.dart';

class UpdatingScreen extends StatelessWidget {
  final Widget child;
  final bool isUpdateInProgress;
  const UpdatingScreen({
    required this.child,
    required this.isUpdateInProgress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: isUpdateInProgress ? 0.3 : 1,
          child: IgnorePointer(
            ignoring: isUpdateInProgress,
            child: child,
          ),
        ),
        if (isUpdateInProgress) const CircularProgressIndicator(),
      ],
    );
  }
}