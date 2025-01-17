part of '../home.dart';

class _AboutMeContact extends StatelessWidget {
  const _AboutMeContact();

  @override
  Widget build(BuildContext context) {
    final color = PTheme.of(context).colors;
    final fontSize = _headerFontBreak(context) ? 18.0 : 24.0;
    final style1 = TextStyle(
      color: color.inverseBackground,
      fontFamily: PFonts.mulishMedium,
      fontSize: fontSize,
    );
    final style2 = TextStyle(
      color: color.inverseBackground,
      fontFamily: PFonts.mulishBold,
      fontSize: fontSize,
      decoration: TextDecoration.underline,
    );
    final space = TextSpan(text: ' ');
    return Center(
      child: _headerHorizontalPadding(
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: PLabels.homeAboutMeContact1(),
                style: style1,
              ),
              space,
              TextSpan(
                text: PLabels.homeAboutMeContact2(),
                style: style2,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => UrlLauncherService.launch(PMyStuff.github),
              ),
              TextSpan(
                text: '. ',
                style: style1,
              ),
              TextSpan(
                text: PLabels.homeAboutMeContact3(),
                style: style1,
              ),
              space,
              TextSpan(
                text: PLabels.homeAboutMeContact4(),
                style: style2,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => UrlLauncherService.launch(PMyStuff.linkedin),
              ),
              space,
              space,
              TextSpan(
                text: PLabels.homeAboutMeContact5(),
                style: style1,
              ),
              space,
              TextSpan(
                text: PLabels.homeAboutMeContact6(),
                style: style2,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => UrlLauncherService.launch(PMyStuff.cv),
              ),
              space,
              space,
              TextSpan(
                text: PLabels.homeAboutMeContact7(),
                style: style1,
              ),
            ],
          ),
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
