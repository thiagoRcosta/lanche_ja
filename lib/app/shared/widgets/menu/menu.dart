import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_theme_extension.dart';
import 'package:lanche_ja/app/features/product/widgets/checkout_button.dart';

class Menu extends StatelessWidget {
  final bool? cartActive;
  const Menu({super.key, this.cartActive = true});

  @override
  Widget build(BuildContext context) {
    final menu = Theme.of(context).extension<AppThemeExtension>()!.menu;

    final List<Widget> items = [
      SvgPicture.asset(
        'assets/icons/home.svg',
        height: 24,
        colorFilter: ColorFilter.mode(menu.icon, BlendMode.srcIn),
      ),
      SvgPicture.asset(
        'assets/icons/burger.svg',
        height: 24,
        colorFilter: ColorFilter.mode(menu.icon, BlendMode.srcIn),
      ),
      SvgPicture.asset(
        'assets/icons/hot_dog.svg',
        height: 24,
        colorFilter: ColorFilter.mode(menu.icon, BlendMode.srcIn),
      ),
      SvgPicture.asset(
        'assets/icons/drink.svg',
        height: 28,
        colorFilter: ColorFilter.mode(menu.icon, BlendMode.srcIn),
      ),
    ];

    if (cartActive == true) {
      items.add(
        CheckoutButton(),
      );
    }

    return Container(
      padding: const EdgeInsets.only(top: 9, bottom: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: menu.background,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(30),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }
}
