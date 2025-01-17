import 'dart:async';

import 'package:flutter_portfolio/theme/p_theme.dart';

class PThemeStreamService {
  factory PThemeStreamService() {
    return _singleton;
  }
  PThemeStreamService._intenal() {
    themeController = StreamController<PThemeType>.broadcast();
  }

  static final _singleton = PThemeStreamService._intenal();

  late StreamController<PThemeType> themeController;

  PThemeType _theme = PThemeType.light;
  PThemeType get theme => _theme;

  Future<void> setTheme(PThemeType newTheme) async {
    if (newTheme == _theme) {
      return;
    }

    _theme = newTheme;
    themeController.add(_theme);
  }
}