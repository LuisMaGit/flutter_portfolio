import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/p_svg.dart';
import 'package:flutter_portfolio/components/p_text.dart';
import 'package:flutter_portfolio/components/ripple_button.dart';
import 'package:flutter_portfolio/constants/p_spacers.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';

class PButtonIconText extends StatelessWidget {
  const PButtonIconText({
    super.key,
    required this.svgAssetIcon,
    required this.text,
    required this.onTap,
    required this.svgColor,
  });

  final String svgAssetIcon;
  final Color? svgColor;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = PTheme.of(context).colors;
    return RippleButton(
      onTap: onTap,
      child: Container(
        width: 150,
        color: colors.backgroundShade1,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: kSpace3,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: 24,
              child: PSvgAsset(
                asset: svgAssetIcon,
                color: svgColor,
              ),
            ),
            SizedBox(width: kSpace3),
            PText.t3(text: text)
          ],
        ),
      ),
    );
  }
}
