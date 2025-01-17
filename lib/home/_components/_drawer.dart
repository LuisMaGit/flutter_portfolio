part of '../home.dart';

class _Drawer extends StatelessWidget {
  const _Drawer({
    required this.appBarSection,
    required this.onSelectSection,
  });

  final AppBarSection appBarSection;
  final void Function(AppBarSection appBarSection) onSelectSection;

  @override
  Widget build(BuildContext context) {
    final colors = PTheme.of(context).colors;
    return Drawer(
      shape: Border.all(),
      backgroundColor: colors.background,
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SizedBox(height: kSpace4),
          Row(
            children: [
              SizedBox(width: kSpace5),
              Logo(),
              Spacer(),
              PButtonIcon(
                type: PButtonIconType.close,
                onTap: () {
                  Scaffold.of(context).closeDrawer();
                },
              ),
              SizedBox(width: kSpace5)
            ],
          ),
          SizedBox(height: kSpace5),
          Padding(
            padding: const EdgeInsets.only(left: kSpace3),
            child: PButtonText(
              selected: appBarSection == AppBarSection.home,
              text: PLabels.homeAppBarHome(),
              onTap: () => onSelectSection(AppBarSection.home),
            ),
          ),
          SizedBox(height: kSpace2),
          Padding(
            padding: const EdgeInsets.only(left: kSpace3),
            child: PButtonText(
              selected: appBarSection == AppBarSection.aboutMe,
              text: PLabels.homeAppBarAboutMe(),
              onTap: () => onSelectSection(AppBarSection.aboutMe),
            ),
          ),
          SizedBox(height: kSpace5),
          Padding(
            padding: EdgeInsets.all(kSpace5),
            child: _SocialButtons(
              spacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
