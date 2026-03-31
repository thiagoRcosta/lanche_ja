import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final double size;

  const LoadingWidget({
    super.key,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final asset = isDark
        ? 'assets/images/dark_loading.gif'
        : 'assets/images/light_loading.gif';

    return Center(
      child: Image.asset(
        asset,
        width: size,
        height: size,
      ),
    );
  }
}
