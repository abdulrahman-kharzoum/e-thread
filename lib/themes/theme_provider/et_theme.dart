import 'package:et_driver/themes/theme_export.dart';
import 'package:flutter/material.dart';

enum AppThemeType {
  dark,
  light,
}

class ETTheme extends InheritedWidget {
  const ETTheme({
    required this.color,
    required this.text,
    required this.themeType,
    required super.child,
    super.key,
  });

  final ColorModel color;
  final TextStyleModel text;
  final AppThemeType themeType;

  static ETTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
