import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/p_text.dart';
import 'package:flutter_portfolio/components/ripple_button.dart';
import 'package:flutter_portfolio/constants/p_spacers.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';

class PButtonText extends StatelessWidget {
  const PButtonText({
    required this.text,
    required this.onTap,
    this.selected = false,
    this.fontSize,
    this.fontFamily,
    this.padding = const EdgeInsets.all(kSpace3),
    super.key,
  });

  final String text;
  final double? fontSize;
  final String? fontFamily;
  final bool selected;
  final EdgeInsets padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = PTheme.of(context);
    return RippleButton(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: PText.t3(
          text: text,
          fontSize: fontSize,
          fontFamily: fontFamily,
          color: selected ? theme.colors.primary : null,
        ),
      ),
    );
  }
}
