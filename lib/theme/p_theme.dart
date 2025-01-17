import 'package:flutter/material.dart';
import 'package:flutter_portfolio/theme/p_color_model.dart';

enum PThemeType { dark, light }

class PTheme extends InheritedWidget {
  final PColorModel colors;
  final PThemeType themeType;

  const PTheme({
    super.key,
    required super.child,
    required this.colors,
    required this.themeType,
  });

  static PTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}




