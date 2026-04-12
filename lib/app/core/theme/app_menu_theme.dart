import 'package:flutter/material.dart';

class AppMenuTheme {
  final Color background;
  final Color icon;
  final Color iconActive;

  const AppMenuTheme({
    required this.background,
    required this.icon,
    required this.iconActive,
  });

  AppMenuTheme copyWith({
    Color? background,
    Color? icon,
    Color? iconActive,
  }) {
    return AppMenuTheme(
      background: background ?? this.background,
      icon: icon ?? this.icon,
      iconActive: iconActive ?? this.iconActive,
    );
  }
}
