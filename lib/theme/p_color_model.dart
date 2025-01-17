import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/p_colors.dart';

class PColorModel {
  final Color background;
  final Color primary;
  final Color backgroundShade1;
  final Color inverseBackground;
  final Color inverseBackgroundShade1;
  
  const PColorModel({
    required this.background,
    required this.primary,
    required this.backgroundShade1,
    required this.inverseBackground,
    required this.inverseBackgroundShade1,
  });

  factory PColorModel.light() {
    return const PColorModel(
      background: PColors.white,
      backgroundShade1: PColors.white2,
      primary: PColors.orange,
      inverseBackground: PColors.black,
      inverseBackgroundShade1: PColors.black2,
    );
  }
  factory PColorModel.dark() {
    return const PColorModel(
      background: PColors.black,
      backgroundShade1: PColors.black2,
      primary: PColors.orange,
      inverseBackground: PColors.white,
      inverseBackgroundShade1: PColors.white2,
    );
  }
}
