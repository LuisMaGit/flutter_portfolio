part of '../home.dart';

class _AboutMeDescription extends StatelessWidget {
  const _AboutMeDescription();

  @override
  Widget build(BuildContext context) {
    final font = _headerFontBreak(context) ? 18.0 : 24.0;
    return Column(
      children: [
        SizedBox(height: kSpace3),
        Center(
          child: _headerHorizontalPadding(
            PText.t3(
              text: PLabels.homeAboutMeDescription(),
              fontSize: font,
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        SizedBox(height: kSpace6),
        Center(
          child: _headerHorizontalPadding(
            PText.t3(
              text: PLabels.homeAboutMeCompetenciesTitle(),
              fontSize: font,
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        SizedBox(height: kSpace1),
        Center(
          child: _headerHorizontalPadding(
            PText.t3(
              text: PLabels.homeAboutMeCompetencies(),
              fontSize: font,
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
      ],
    );
  }
}
