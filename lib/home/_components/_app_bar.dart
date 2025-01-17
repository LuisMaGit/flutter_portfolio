part of '../home.dart';

enum AppBarSection { home, aboutMe }

class _AppBar extends StatelessWidget {
  const _AppBar({
    required this.appBarSection,
    required this.onSelectSection,
  });

  final AppBarSection appBarSection;
  final void Function(AppBarSection appBarSection) onSelectSection;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    Widget logo() {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Logo(),
        ),
      );
    }

    Widget desktop() {
      return Stack(
        children: [
          Row(
            children: [
              PButtonText(
                selected: appBarSection == AppBarSection.home,
                text: PLabels.homeAppBarHome(),
                onTap: () => onSelectSection(AppBarSection.home),
              ),
              SizedBox(width: kSpace2),
              PButtonText(
                selected: appBarSection == AppBarSection.aboutMe,
                text: PLabels.homeAppBarAboutMe(),
                onTap: () => onSelectSection(AppBarSection.aboutMe),
              ),
            ],
          ),
          logo(),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Spacer(),
                _SocialButtons(
                  spacing: kSpace7,
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget mobile() {
      return Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: kSpace2),
              child: PButtonIcon(
                type: PButtonIconType.burgerMenu,
                onTap: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          logo(),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kSpace2,
        horizontal: kSpace5,
      ),
      child: width > 720 ? desktop() : mobile(),
    );
  }
}
