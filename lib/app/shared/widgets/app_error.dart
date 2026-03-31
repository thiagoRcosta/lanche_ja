import 'package:flutter/material.dart';
import 'package:lanche_ja/app/core/theme/app_text_styles.dart';

class AppErrorWidget extends StatelessWidget {
  final String message;
  final double? imageSize;

  const AppErrorWidget({
    super.key,
    required this.message,
    this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/error.png',
          width: imageSize ?? 200,
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_sharp,
              color: primary,
            ),

            const SizedBox(width: 8),

            Text(
              message,
              style: AppTextStyles.titleMedium.copyWith(
                color: primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
