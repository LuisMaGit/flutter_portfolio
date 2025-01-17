part of '../home.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final color = PTheme.of(context).colors;
    final fontBreak = _headerFontBreak(context);
    final fontSize = fontBreak ? 18.0 : 24.0;
    final style1 = TextStyle(
      color: color.inverseBackground,
      fontFamily: PFonts.mulishMedium,
      fontSize: fontSize,
    );
    final style2 = TextStyle(
      color: color.inverseBackground,
      fontFamily: PFonts.mulishBold,
      fontSize: fontSize,
    );
    final space = TextSpan(text: ' ');
    return Column(
      children: [
        SizedBox(height: kSpace2),
        _headerHorizontalPadding(
          PText.h1(
            text: PLabels.homeHeaderTitle(),
            color: color.primary,
            textAlign: TextAlign.center,
            fontSize: fontBreak ? 32 : null,
          ),
        ),
        SizedBox(height: kSpace1),
        _headerHorizontalPadding(
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: PLabels.homeHeaderDescriptionSection1(),
                  style: style1,
                ),
                space,
                TextSpan(
                  text: PLabels.homeHeaderDescriptionSection2(),
                  style: style2,
                ),
                space,
                TextSpan(
                  text: PLabels.homeHeaderDescriptionSection3(),
                  style: style1,
                ),
                space,
                TextSpan(
                  text: PLabels.homeHeaderDescriptionSection4(),
                  style: style2,
                ),
                space,
                TextSpan(
                  text: PLabels.homeHeaderDescriptionSection5(),
                  style: style1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: kSpace2),
        _headerHorizontalPadding(
          PText.t2(
            text: PLabels.homeHeaderDescription2(),
            textAlign: TextAlign.center,
            fontSize: fontSize,
          ),
        ),
        SizedBox(height: kSpace7),
      ],
    );
  }
}
