import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/p_text.dart';
import 'package:flutter_portfolio/constants/p_colors.dart';
import 'package:flutter_portfolio/constants/p_spacers.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = PTheme.of(context).colors;
    const size = 30.0;
    Widget row({required String l1, required String l2}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PText.code1(
            text: l1,
            color: PColors.white,
          ),
          SizedBox(width: kSpace1),
          PText.code1(
            text: l2,
            color: PColors.white,
          ),
        ],
      );
    }

    return MediaQuery.withNoTextScaling(
      child: Container(
        width: size,
        height: size,
        color: theme.primary,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: row(l1: 'L', l2: 'M'),
            ),
            Positioned(
              top: 12,
              child: row(l1: 'G', l2: 'F'),
            ),
          ],
        ),
      ),
    );
  }
}
