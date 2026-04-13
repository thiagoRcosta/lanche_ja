import 'package:flutter/material.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_text_styles.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        highlightColor: AppColors.primaryDisabled,
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Finalizar Pedido',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.black,
                  fontWeight: .w600,
                ),
              ),
              Text(
                'R\$ 114,90',
                style: AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.black,
                  fontWeight: .w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
