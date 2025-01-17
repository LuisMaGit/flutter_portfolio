import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/logo.dart';
import 'package:flutter_portfolio/components/p_button_icon.dart';
import 'package:flutter_portfolio/components/p_button_icon_text.dart';
import 'package:flutter_portfolio/components/p_button_text.dart';
import 'package:flutter_portfolio/components/p_svg.dart';
import 'package:flutter_portfolio/components/p_text.dart';
import 'package:flutter_portfolio/constants/p_colors.dart';
import 'package:flutter_portfolio/constants/p_fonts.dart';
import 'package:flutter_portfolio/constants/p_labels.dart';
import 'package:flutter_portfolio/constants/p_my_stuff.dart';
import 'package:flutter_portfolio/constants/p_spacers.dart';
import 'package:flutter_portfolio/data/project_model.dart';
import 'package:flutter_portfolio/data/projects_data.dart';
import 'package:flutter_portfolio/services/url_launcher_service.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';
import 'package:flutter_portfolio/theme/p_theme_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part '_components/_aboutme_contact.dart';
part '_components/_aboutme_decription.dart';
part '_components/_aboutme_picture.dart';
part '_components/_aboutme_title.dart';
part '_components/_app_bar.dart';
part '_components/_drawer.dart';
part '_components/_footer.dart';
part '_components/_header.dart';
part '_components/_project_tile.dart';
part '_components/_project_tile_desc.dart';
part '_components/_project_tile_pic.dart';
part '_components/_social_buttons.dart';
part '_components/_ui_utils.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.startInSection,
  });

  final AppBarSection startInSection;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final themeService = PThemeStreamService();
  final scrollController = ItemScrollController();
  final scrollListener = ItemPositionsListener.create();
  AppBarSection appBarSection = AppBarSection.home;
  bool automaticScrollInProcess = false;
  String year = DateTime.now().year.toString();

  @override
  void initState() {
    scrollListener.itemPositions.addListener(
      () {
        final itemPostionsIdxs =
            scrollListener.itemPositions.value.map((idx) => idx.index);
        if (automaticScrollInProcess) {
          return;
        }
        if (itemPostionsIdxs.contains(0) &&
            appBarSection != AppBarSection.home) {
          setState(() {
            appBarSection = AppBarSection.home;
          });
        } else if (itemPostionsIdxs.contains(projectsData.length + 3) &&
            appBarSection != AppBarSection.aboutMe) {
          setState(() {
            appBarSection = AppBarSection.aboutMe;
          });
        }
      },
    );

    if (widget.startInSection != appBarSection) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onSelectAppBar(widget.startInSection);
      });
    }

    super.initState();
  }

  Future<void> onSelectAppBar(AppBarSection selection) async {
    if (appBarSection == selection) {
      return;
    }
    automaticScrollInProcess = true;
    final duration = Duration(milliseconds: 200);
    if (selection == AppBarSection.home) {
      await scrollController.scrollTo(
        index: 0,
        duration: duration,
      );
    } else if (selection == AppBarSection.aboutMe) {
      await scrollController.scrollTo(
        index: projectsData.length + 1,
        duration: duration,
      );
    }
    automaticScrollInProcess = false;

    setState(() {
      appBarSection = selection;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = PTheme.of(context).colors;
    final brightnes = MediaQuery.of(context).platformBrightness;

    themeService.setTheme(
      brightnes == Brightness.dark ? PThemeType.dark : PThemeType.light,
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.background,
        drawer: _Drawer(
          appBarSection: appBarSection,
          onSelectSection: onSelectAppBar,
        ),
        body: Column(
          children: [
            _AppBar(
              appBarSection: appBarSection,
              onSelectSection: onSelectAppBar,
            ),
            Expanded(
              child: ScrollablePositionedList.builder(
                itemCount: projectsData.length + 6,
                itemScrollController: scrollController,
                itemPositionsListener: scrollListener,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const _Header();
                  } else if (index > 0 && index <= projectsData.length) {
                    return _ProjectTile(
                      project: projectsData[index - 1],
                    );
                  } else if (index == projectsData.length + 1) {
                    return const _AboutMeTitle();
                  } else if (index == projectsData.length + 2) {
                    return const _AboutMePicture();
                  } else if (index == projectsData.length + 3) {
                    return const _AboutMeDescription();
                  } else if (index == projectsData.length + 4) {
                    return const _AboutMeContact();
                  } else if (index == projectsData.length + 5) {
                    return  _Footer(year: year);
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
