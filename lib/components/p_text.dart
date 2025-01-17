import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/p_fonts.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';

enum PTextType { h1, h2, t1, t2, t3, code1 }

class PText extends StatelessWidget {
  const PText({
    required this.text,
    required this.styleType,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  });

  final String text;
  final PTextType styleType;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextDecoration? textDecoration;
  final FontStyle? fontStyle;
  final bool? selectable;
  final TextOverflow? overflow;

  const PText.h1({
    required this.text,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  }) : styleType = PTextType.h1;

  const PText.h2({
    required this.text,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  }) : styleType = PTextType.h2;

  const PText.t1({
    required this.text,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  }) : styleType = PTextType.t1;

  const PText.t2({
    required this.text,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  }) : styleType = PTextType.t2;

  const PText.t3({
    required this.text,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  }) : styleType = PTextType.t3;

  const PText.code1({
    required this.text,
    this.selectable,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textDecoration,
    this.fontStyle,
    this.overflow,
    super.key,
  }) : styleType = PTextType.code1;

  @override
  Widget build(BuildContext context) {
    final colors = PTheme.of(context).colors;

    TextStyle getStyle() {
      final base = TextStyle(
        color: colors.inverseBackground,
        decoration: TextDecoration.none,
      );

      switch (styleType) {
        case PTextType.h1:
          return base.copyWith(
            fontFamily: PFonts.mulishBold,
            fontSize: 40,
          );
        case PTextType.h2:
          return base.copyWith(
            fontFamily: PFonts.mulishExtraBold,
            fontSize: 30,
          );
        case PTextType.t1:
          return base.copyWith(
            fontFamily: PFonts.mulishSemiBold,
            fontSize: 24,
          );
        case PTextType.t2:
          return base.copyWith(
            fontFamily: PFonts.mulishSemiBold,
            fontSize: 18,
          );
        case PTextType.t3:
          return base.copyWith(
            fontFamily: PFonts.mulishMedium,
            fontSize: 14,
          );
        case PTextType.code1:
          return base.copyWith(
            fontFamily: PFonts.mPlusCode,
            fontSize: 12,
          );
      }
    }

    final style = getStyle().copyWith(
      color: color ?? getStyle().color,
      fontWeight: fontWeight ?? getStyle().fontWeight,
      fontSize: fontSize ?? getStyle().fontSize,
      fontFamily: fontFamily ?? getStyle().fontFamily,
      decoration: textDecoration ?? getStyle().decoration,
      fontStyle: fontStyle ?? getStyle().fontStyle,
    );

    if (!(selectable ?? false)) {
      return Text(
        text,
        overflow: overflow,
        maxLines: maxLines,
        textAlign: textAlign,
        style: style,
      );
    }

    return SelectableText(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: style,
    );
  }
}
