part of '../home.dart';

class _Footer extends StatelessWidget {
  const _Footer({required this.year});

  final String year;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PText.code1(
            text: PLabels.footerText(year),
          )
        ],
      ),
    );
  }
}
