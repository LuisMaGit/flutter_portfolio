part of '../home.dart';


class _ProjectTilePic extends StatefulWidget {
  const _ProjectTilePic({
    required this.project,
    required this.smallCardContent,
  });

  final ProjectModel project;
  final bool smallCardContent;

  @override
  State<_ProjectTilePic> createState() => _ProjectTilePicState();
}

class _ProjectTilePicState extends State<_ProjectTilePic> {
  bool moveProjectPic = false;

  @override
  Widget build(BuildContext context) {
    final theme = PTheme.of(context);
    final isDarkTheme = theme.themeType == PThemeType.dark;
    const picBorderR = 12.0;
    const picBorderRR = Radius.circular(picBorderR);
    const animationDuration = Duration(milliseconds: 200);
    const animationCurve = Curves.easeIn;

    final double height = widget.smallCardContent ? 240 : 280;
    final double pictureW = widget.smallCardContent ? 90 : 120;
    final double pictureH = widget.smallCardContent ? 190 : 240;
    final double fontSize = widget.smallCardContent ? 45 : 70;

    (double width, double height) getFullPicDimensions() {
      return (pictureW + 14.0, pictureH + 18.0);
    }

    final (widthFullPic, heightFullPic) = getFullPicDimensions();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          moveProjectPic = true;
        });
      },
      onExit: (_) {
        setState(() {
          moveProjectPic = false;
        });
      },
      child: GestureDetector(
        onTap: () => UrlLauncherService.launch(widget.project.mainLink),
        child: Container(
          color: widget.project.backgroundColor,
          height: height,
          padding: const EdgeInsets.only(left: kSpace5, right: kSpace4),
          child: Row(
            children: [
              // title
              Flexible(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: MediaQuery.withNoTextScaling(
                    child: PText.h2(
                      text: widget.project.cardText,
                      color: widget.project.textColor,
                      fontSize: fontSize,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: widthFullPic,
                height: heightFullPic,
                child: Stack(
                  children: [
                    // shadow
                    Positioned(
                      top: 7,
                      left: 0,
                      child: AnimatedContainer(
                        duration: animationDuration,
                        curve: animationCurve,
                        width: moveProjectPic ? pictureW : pictureW + 7,
                        height: moveProjectPic ? pictureH : pictureH + 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: picBorderRR,
                            bottomLeft: Radius.circular(picBorderR + 4),
                            topRight: picBorderRR,
                            bottomRight: picBorderRR,
                          ),
                          color: widget.project.colorShadowPic,
                        ),
                      ),
                    ),
                    // picture
                    AnimatedPositioned(
                      top: moveProjectPic ? 0 : 3,
                      left: moveProjectPic ? 0 : 10,
                      duration: animationDuration,
                      curve: animationCurve,
                      child: AnimatedContainer(
                        duration: animationDuration,
                        curve: animationCurve,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(picBorderR),
                          border: Border.all(
                            color: PColors.black,
                            width: 3,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        width: moveProjectPic ? pictureW + 5 : pictureW,
                        height: moveProjectPic ? pictureH + 10 : pictureH,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(picBorderR),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            fit: BoxFit.cover,
                            isDarkTheme
                                ? widget.project.srcDarkPic
                                : widget.project.srcLighPic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
