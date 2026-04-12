import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color menu;

  const AppThemeExtension({
    required this.menu,
  });

  @override
  AppThemeExtension copyWith({
    Color? menu,
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
      menu: Color.lerp(menu, other.menu, t)!,
    );
  }
}
