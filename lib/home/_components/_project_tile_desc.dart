part of '../home.dart';

class _ProjectTileDesc extends StatelessWidget {
  const _ProjectTileDesc({required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final colors = PTheme.of(context).colors;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: kSpace4,
      children: [
        // logo + icon
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => UrlLauncherService.launch(project.mainLink),
            child: Row(
              children: [
                if (project.logo != null)
                  SizedBox.square(
                    dimension: 30,
                    child: PSvgAsset(
                      asset: project.logo!,
                    ),
                  ),
                SizedBox(width: kSpace2),
                Expanded(
                  child: PText.h1(
                    text: project.title,
                    fontSize: 24,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ),
        // description
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => UrlLauncherService.launch(project.mainLink),
            child: PText.t2(text: project.description),
          ),
        ),
        // buttons
        Row(
            spacing: kSpace2,
            children: project.buttons
                .map(
                  (b) => PButtonIconText(
                    onTap: () => UrlLauncherService.launch(b.link),
                    svgAssetIcon: b.type.iconAsset,
                    text: b.type.name,
                    svgColor: b.type == ProjectButtonType.github
                        ? colors.inverseBackground
                        : null,
                  ),
                )
                .toList()),
      ],
    );
  }
}
