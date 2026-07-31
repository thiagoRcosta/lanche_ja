import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_menu_theme.dart';
import 'package:lanche_ja/app/core/theme/app_theme_extension.dart';

import 'package:go_router/go_router.dart';

import 'package:lanche_ja/app/features/product/widgets/checkout_button.dart';

class AppMenu extends StatelessWidget {
  final bool cartActive;

  const AppMenu({
    super.key,
    this.cartActive = true,
  });

  @override
  Widget build(BuildContext context) {
    final menu = Theme.of(context).extension<AppThemeExtension>()!.menu;

    final List<Widget> items = [
      _buildItem(
        menu,
        icon: 'assets/icons/home.svg',
        onTap: () => _pushIfNotCurrent(context, '/'),
      ),

      _buildItem(
        menu,
        icon: 'assets/icons/burger.svg',
        onTap: () => _pushIfNotCurrent(context, '/burger'),
      ),

      _buildItem(
        menu,
        icon: 'assets/icons/hot_dog.svg',
        onTap: () => _pushIfNotCurrent(context, '/hot_dog'),
      ),

      _buildItem(
        menu,
        icon: 'assets/icons/drink.svg',
        onTap: () => _pushIfNotCurrent(context, '/drink'),
      ),
    ];

    if (cartActive) {
      items.add(
        const CheckoutButton(),
      );
    }

    return Container(
      padding: const EdgeInsets.only(
        top: 9,
        bottom: 12,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
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

  static Widget _buildItem(
    AppMenuTheme menu, {
    required String icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(
            icon,
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              menu.icon,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }

  static void _pushIfNotCurrent(BuildContext context, String path) {
    final current = GoRouterState.of(context).uri.toString();
    if (current != path) {
      context.push(path);
    }
  }
}
