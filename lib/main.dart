import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/p_labels.dart';
import 'package:flutter_portfolio/home/home.dart';
import 'package:flutter_portfolio/theme/p_theme_provider.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PThemeProvider(
      builder: (context, theme) {
        return MaterialApp(
          title: PLabels.title(),
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: Home(
            startInSection: AppBarSection.home,
          ),
        );
      },
    );
  }
}
