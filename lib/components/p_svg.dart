import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PSvgAsset extends StatelessWidget {
  const PSvgAsset({
    required this.asset,
    this.color,
    super.key,
  });

  final String asset;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcATop,
            ),
    );
  }
}
