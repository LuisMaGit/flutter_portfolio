part of '../home.dart';

class _SocialButtons extends StatelessWidget {
  const _SocialButtons({
    this.spacing = kSpace5,
  });

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PButtonIcon(
          type: PButtonIconType.github,
          onTap: () => UrlLauncherService.launch(PMyStuff.github),
        ),
        PButtonIcon(
          type: PButtonIconType.linkedin,
          onTap: () => UrlLauncherService.launch(PMyStuff.linkedin),
        ),
        PButtonIcon(
          type: PButtonIconType.email,
          onTap: () => UrlLauncherService.launch(PMyStuff.mail),
        ),
        MediaQuery.withNoTextScaling(
          child: PButtonText(
            text: 'CV',
            selected: false,
            padding: const EdgeInsets.all(0),
            fontFamily: PFonts.mulishSemiBold,
            fontSize: 20,
            onTap: () => UrlLauncherService.launch(PMyStuff.cv),
          ),
        ),
      ],
    );
  }
}
