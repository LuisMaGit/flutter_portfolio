import 'dart:ui';

import 'package:flutter_portfolio/constants/p_svg_icons.dart';

class ProjectModel {
  const ProjectModel({
    required this.backgroundColor,
    required this.cardText,
    required this.title,
    required this.description,
    required this.textColor,
    required this.srcLighPic,
    required this.srcDarkPic,
    required this.colorShadowPic,
    required this.buttons,
    required this.mainLink,
    this.picType = ProjectPicType.mobile,
    this.logo,
  });

  final Color backgroundColor;
  final Color textColor;
  final String cardText;
  final String? logo;
  final String title;
  final String description;
  final String srcLighPic;
  final String srcDarkPic;
  final Color colorShadowPic;
  final String mainLink;
  final ProjectPicType picType;
  final List<ProjectButton> buttons;
}

enum ProjectButtonType {
  github(
    name: 'Source code',
    iconAsset: PSVGIcons.github,
  ),
  googlePlay(
    name: 'Google Play',
    iconAsset: PSVGIcons.gPlay,
  ),
  appStore(
    name: 'Apple Store',
    iconAsset: PSVGIcons.appStore,
  ),
  macOSAppleChip(
    name: 'macOS .dmg',
    iconAsset: PSVGIcons.apple,
  );

  final String name;
  final String iconAsset;

  const ProjectButtonType({required this.name, required this.iconAsset});
}

class ProjectButton {
  const ProjectButton({
    required this.type,
    required this.link,
  });

  final ProjectButtonType type;
  final String link;
}

enum ProjectPicType {
  mobile,
  desktop,
}
