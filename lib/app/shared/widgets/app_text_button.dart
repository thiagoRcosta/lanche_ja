import 'package:flutter/material.dart';
import 'package:lanche_ja/app/core/theme/app_text_styles.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateProperty.all(
          primary.withAlpha(10),
        ),
      ),
      child: Text(
        text.toUpperCase(),
        style: AppTextStyles.bodyLarge.copyWith(
          color: primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
