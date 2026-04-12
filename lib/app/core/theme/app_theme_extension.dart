import 'package:flutter/material.dart';
import 'package:lanche_ja/app/core/theme/app_menu_theme.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final AppMenuTheme menu;

  const AppThemeExtension({
    required this.menu,
  });

  @override
  AppThemeExtension copyWith({
    AppMenuTheme? menu,
  }) {
    return AppThemeExtension(
      menu: menu ?? this.menu,
    );
  }

  @override
  AppThemeExtension lerp(
    ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) return this;

    return AppThemeExtension(
      menu: AppMenuTheme(
        background: Color.lerp(menu.background, other.menu.background, t)!,
        icon: Color.lerp(menu.icon, other.menu.icon, t)!,
        iconActive: Color.lerp(menu.iconActive, other.menu.iconActive, t)!,
      ),
    );
  }
}
