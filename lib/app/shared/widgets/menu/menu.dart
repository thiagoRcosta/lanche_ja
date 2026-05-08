import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lanche_ja/app/core/theme/app_colors.dart';
import 'package:lanche_ja/app/core/theme/app_menu_theme.dart';
import 'package:lanche_ja/app/core/theme/app_theme_extension.dart';
import 'package:lanche_ja/app/features/home/views/home_screen.dart';
import 'package:lanche_ja/app/features/product/views/burguer_screen.dart';
import 'package:lanche_ja/app/features/product/views/drink_screen.dart';
import 'package:lanche_ja/app/features/product/views/hot_dog_screen.dart';
import 'package:lanche_ja/app/features/product/widgets/checkout_button.dart';

class Menu extends StatelessWidget {
  final bool? cartActive;
  const Menu({super.key, this.cartActive = true});

  @override
  Widget build(BuildContext context) {
    final menu = Theme.of(context).extension<AppThemeExtension>()!.menu;
    final List<Widget> items = [
      _items(
        context,
        menu,
        'assets/icons/home.svg',
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        ),
      ),
      _items(
        context,
        menu,
        'assets/icons/burger.svg',
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BurguerScreen()),
        ),
      ),
      _items(
        context,
        menu,
        'assets/icons/hot_dog.svg',
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HotDogScreen()),
        ),
      ),
      _items(
        context,
        menu,
        'assets/icons/drink.svg',
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DrinkScreen()),
        ),
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

  Widget _items(
    BuildContext context,
    AppMenuTheme menu,
    String icon,
    VoidCallback? redirect,
  ) {
    return InkWell(
      onTap: redirect,
      child: SvgPicture.asset(
        icon,
        height: 24,
        colorFilter: ColorFilter.mode(menu.icon, BlendMode.srcIn),
      ),
    );
  }
}
