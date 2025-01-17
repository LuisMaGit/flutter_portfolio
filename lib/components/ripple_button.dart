
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/theme/p_theme.dart';

class RippleButton extends StatelessWidget {
  const RippleButton({
    required this.child,
    this.onTap,
    super.key,
  });

  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = PTheme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: theme.colors.backgroundShade1,
        splashColor: theme.colors.backgroundShade1,
        onTap: onTap,
        child: child,
      ),
    );
  }
}