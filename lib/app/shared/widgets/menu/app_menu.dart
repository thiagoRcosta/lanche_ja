import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_theme_extension.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = Theme.of(context).extension<AppThemeExtension>()!.menu;
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 18),
      decoration: BoxDecoration(
        color: menu.background,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(30),
            blurRadius: 10,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            'assets/icons/home.svg',
            height: 24,
            colorFilter: ColorFilter.mode(
              menu.icon,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/burger.svg',
            height: 24,
            colorFilter: ColorFilter.mode(
              menu.icon,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/hot_dog.svg',
            height: 24,
            colorFilter: ColorFilter.mode(
              menu.icon,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/drink.svg',
            height: 28,
            colorFilter: ColorFilter.mode(
              menu.icon,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
