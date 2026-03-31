import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_text_styles.dart';
import 'package:lanche_ja/app/shared/widgets/add_to_cart_component.dart';

class AppProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String? description;
  final double price;

  const AppProductCard({
    super.key,
    required this.image,
    required this.title,
    this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Flexible(
              flex: 8,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Flexible(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.titleSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  if (description != null) ...[
                    Text(
                      description!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodySmall,
                    ),
                  ],
                  const SizedBox(height: 8.0),
                  Divider(height: 10.0),
                  Text(
                    NumberFormat.currency(
                      locale: 'pt_BR',
                      symbol: 'R\$',
                    ).format(price),
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 2,
              child: AddToCartComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
