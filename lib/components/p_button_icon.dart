import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/p_svg.dart';
import 'package:flutter_portfolio/components/ripple_button.dart';
import 'package:flutter_portfolio/constants/p_svg_icons.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';

enum PButtonIconType {
  burgerMenu,
  github,
  linkedin,
  email,
  close,
}

class PButtonIcon extends StatelessWidget {
  const PButtonIcon({
    super.key,
    required this.type,
    required this.onTap,
  });

  final PButtonIconType type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = PTheme.of(context).colors;

    Widget flutterIcon(IconData icons) {
      return Icon(
        icons,
        color: color.inverseBackground,
      );
    }

    Widget svgIcon(String svg) {
      return PSvgAsset(
        asset: svg,
        color: color.inverseBackground,
      );
    }

    Widget iconSelector() {
      switch (type) {
        case PButtonIconType.burgerMenu:
          return flutterIcon(Icons.menu_sharp);
        case PButtonIconType.github:
          return svgIcon(PSVGIcons.github);
        case PButtonIconType.linkedin:
          return svgIcon(PSVGIcons.linkedin);
        case PButtonIconType.email:
          return flutterIcon(Icons.alternate_email_sharp);
        case PButtonIconType.close:
          return flutterIcon(Icons.close_sharp);
      }
    }

    return RippleButton(
      onTap: onTap,
      child: SizedBox.square(
        dimension: 22,
        child: iconSelector(),
      ),
    );
  }
}
