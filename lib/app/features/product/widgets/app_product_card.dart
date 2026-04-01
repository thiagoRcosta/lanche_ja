import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lanche_ja/app/features/product/viewmodels/product_view_model.dart';
import 'package:provider/provider.dart';

import 'package:lanche_ja/app/core/theme/app_text_styles.dart';
import 'package:lanche_ja/app/features/product/widgets/add_to_cart_component.dart';

class AppProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String? description;
  final double price;
  final bool? backgroundSwitch;

  const AppProductCard({
    super.key,
    required this.image,
    required this.title,
    this.description,
    required this.price,
    this.backgroundSwitch,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductViewModel(),
      child: _ProductCardContent(
        image: image,
        title: title,
        description: description,
        price: price,
        backgroundSwitch: backgroundSwitch,
      ),
    );
  }
}

class _ProductCardContent extends StatelessWidget {
  final String image;
  final String title;
  final String? description;
  final double price;
  final bool? backgroundSwitch;

  const _ProductCardContent({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    this.backgroundSwitch,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: backgroundSwitch == true
          ? Theme.of(context).highlightColor
          : Theme.of(context).cardColor,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Flexible(
              flex: 8,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 16),

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

                  const SizedBox(height: 10),

                  if (description != null) ...[
                    Text(
                      description!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodySmall,
                    ),
                  ],
                  const SizedBox(height: 6),

                  const Divider(height: 12),

                  Text(
                    NumberFormat.currency(
                      locale: 'pt_BR',
                      symbol: 'R\$',
                    ).format(price),
                    style: AppTextStyles.titleSmall.copyWith(
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            const Expanded(
              flex: 2,
              child: AddToCartComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
