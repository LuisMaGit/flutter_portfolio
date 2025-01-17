part of '../home.dart';

class _AboutMePicture extends StatelessWidget {
  const _AboutMePicture();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kSpace4),
      alignment: Alignment.center,
      width: 300,
      child: Image.asset(PMyStuff.picture),
    );
  }
}
