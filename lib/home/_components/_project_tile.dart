part of '../home.dart';

class _ProjectTile extends StatelessWidget {
  const _ProjectTile({required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    Widget projectTilePic({required bool smallCardContent}) {
      return _ProjectTilePic(
        project: project,
        smallCardContent: smallCardContent,
      );
    }

    Widget tileDescription() {
      return _ProjectTileDesc(project: project);
    }

    if (width < 600) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpace3),
        child: projectTilePic(smallCardContent: width < 500),
      );
    } else if (width >= 600 && width < 800) {
      return Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 500,
          child: projectTilePic(smallCardContent: false),
        ),
      );
    } else if (width >= 800 && width < 1000) {
      return Row(
        children: [
          SizedBox(
            width: 420,
            child: projectTilePic(smallCardContent: true),
          ),
          SizedBox(width: kSpace3),
          Flexible(
            child: tileDescription(),
          ),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 500,
          child: projectTilePic(smallCardContent: false),
        ),
        SizedBox(width: kSpace3),
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: tileDescription(),
          ),
        ),
      ],
    );
  }
}
