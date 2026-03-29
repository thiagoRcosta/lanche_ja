import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double? strokeWidth;
  final Color? color;

  const LoadingWidget({super.key, this.strokeWidth, this.color});

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return Image.asset(
        'assets/images/dark_loading.gif',
        width: 80,
      );
    } else {
      return Image.asset(
        'assets/images/light_loading.gif',
        width: 80,
      );
    }
  }
}
