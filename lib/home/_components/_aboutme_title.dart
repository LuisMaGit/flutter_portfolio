part of '../home.dart';

class _AboutMeTitle extends StatelessWidget {
  const _AboutMeTitle();

  @override
  Widget build(BuildContext context) {
    final color = PTheme.of(context).colors;
    final fontBreak = _headerFontBreak(context);
    return _headerHorizontalPadding(
      Padding(
        padding: const EdgeInsets.only(top: kSpace7),
        child: PText.h1(
          text: PLabels.homeAppBarAboutMe(),
          color: color.primary,
          textAlign: TextAlign.center,
          fontSize: fontBreak ? 32 : null,
        ),
      ),
    );
  }
}
