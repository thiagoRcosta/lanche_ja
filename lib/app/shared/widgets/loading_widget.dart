import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double? strokeWidth;
  final Color? color;

  const LoadingWidget({super.key, this.strokeWidth, this.color});

  @override
  Widget build(BuildContext context) {
    //TODO: implementar loading personalizado

    return CircularProgressIndicator(
      strokeWidth: strokeWidth ?? 4.0,
      color: color ?? Colors.black,
    );
  }
}
