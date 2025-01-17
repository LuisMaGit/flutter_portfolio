part of '../home.dart';

bool _headerFontBreak(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  return width < 500;
}

Widget _headerHorizontalPadding(
  Widget child, {
  Alignment alignment = Alignment.center,
}) {
  return Container(
    constraints: BoxConstraints(maxWidth: 1000),
    padding: EdgeInsets.symmetric(
      horizontal: kSpace5,
    ),
    alignment: alignment,
    child: child,
  );
}
