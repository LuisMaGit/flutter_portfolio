import 'package:flutter/material.dart';
import 'package:flutter_portfolio/theme/p_color_model.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';
import 'package:flutter_portfolio/theme/p_theme_service.dart';

class PThemeProvider extends StatefulWidget {
  const PThemeProvider({
    required this.builder,
    super.key,
  });

  final Widget Function(BuildContext context, ThemeData pTheme) builder;

  @override
  State<PThemeProvider> createState() => _PThemeProviderState();
}

class _PThemeProviderState extends State<PThemeProvider> {
  final themeService = PThemeStreamService();

  @override
  void initState() {
    super.initState();
  }

  ThemeData _themeDataFromColors(PColorModel color) {
    return ThemeData(
      primaryColor: color.primary,
      canvasColor: color.background,
      scaffoldBackgroundColor: color.background,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: color.primary,
        selectionColor: color.backgroundShade1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PThemeType>(
      stream: themeService.themeController.stream,
      initialData: PThemeType.light,
      builder: (context, snapshot) {
        final themeType = snapshot.data ?? PThemeType.light;
        final colors = themeType == PThemeType.dark
            ? PColorModel.dark()
            : PColorModel.light();

        return PTheme(
          colors: colors,
          themeType: themeType,
          child: widget.builder(
            context,
            _themeDataFromColors(colors),
          ),
        );
      },
    );
  }
}