import 'dart:ui';

import 'package:flutter_portfolio/constants/p_projects_pics.dart';
import 'package:flutter_portfolio/constants/p_svg_icons.dart';
import 'package:flutter_portfolio/data/project_model.dart';

const projectsData = [
  ProjectModel(
    backgroundColor: Color(0xFFFB677D),
    colorShadowPic: Color(0xFFA83D4D),
    textColor: Color(0xFFFFE2E7),
    cardText: 'Lodgify',
    logo: PSVGIcons.lodgify,
    title: 'Lodgify’s Mobile App',
    description:
        'Vacation rental app, done with Flutter, +15K daily active users between Android and iOS.',
    srcLighPic: PProjectsPics.lodgify,
    srcDarkPic: PProjectsPics.lodgify,
    mainLink: 'https://www.lodgify.com/mobile-app/',
    buttons: [
      ProjectButton(
        type: ProjectButtonType.googlePlay,
        link: 'https://play.google.com/store/search?q=lodgify&c=apps',
      ),
      ProjectButton(
        type: ProjectButtonType.appStore,
        link:
            'https://apps.apple.com/us/app/lodgify-vacation-rental-app/id1635159280',
      ),
    ],
  ),
  ProjectModel(
    backgroundColor: Color(0xFFE2B714),
    colorShadowPic: Color(0xFF7F6600),
    textColor: Color(0xFFFFF7D8),
    cardText: 'Pac\ntype',
    logo: PSVGIcons.pactype,
    title: 'Pacman for typists',
    description:
        'A Kotlin Compose Multiplatfom game, with no game engine, offline, running in Android, iOS and macOS.',
    picType: ProjectPicType.desktop,
    srcLighPic: PProjectsPics.pactype,
    srcDarkPic: PProjectsPics.pactype,
    mainLink: 'https://github.com/LuisMaGit/pactype/blob/main/README.md',
    buttons: [
      ProjectButton(
        type: ProjectButtonType.googlePlay,
        link: 'https://play.google.com/store/apps/details?id=com.luisma.pactype',
      ),
      ProjectButton(
        type: ProjectButtonType.macOSAppleChip,
        link:
            'https://github.com/LuisMaGit/pactype/raw/refs/heads/main/mac_arm/Pactype-1.0.0.dmg',
      ),
    ],
  ),
  ProjectModel(
    backgroundColor: Color(0xFFFF9957),
    colorShadowPic: Color(0xFFBA703F),
    textColor: Color(0xFFFFE7D6),
    cardText: 'Conexiones',
    logo: PSVGIcons.conexiones,
    title: 'The Connections Game in Spanish ',
    description:
        'A KMM (Kotlin Multiplatform Mobile) game, with native user interface for Android (JetpackCompose) and iOS (SwiftUI), offline, +100 levels.',
    srcLighPic: PProjectsPics.conexionesLight,
    srcDarkPic: PProjectsPics.conexionesDark,
    mainLink: 'https://github.com/LuisMaGit/kmm-conexiones/blob/main/README.md',
    buttons: [
      ProjectButton(
        type: ProjectButtonType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=com.luisma.conexiones.android',
      ),
      ProjectButton(
        type: ProjectButtonType.github,
        link: 'https://github.com/LuisMaGit/kmm-conexiones',
      ),
    ],
  ),
  ProjectModel(
    backgroundColor: Color(0xFF60C9F8),
    colorShadowPic: Color(0xFF499CC1),
    textColor: Color(0xFFCDEBF9),
    cardText: 'Crypto Tracker',
    title: 'Minimal Crypto Currencies Tracker',
    description: 'Made with zero dependencies, only the Flutter SDK.',
    srcLighPic: PProjectsPics.cryptoLight,
    srcDarkPic: PProjectsPics.cryptoDark,
    mainLink: 'https://github.com/LuisMaGit/flutter-crypto/blob/main/README.md',
    buttons: [
      ProjectButton(
        type: ProjectButtonType.github,
        link: 'https://github.com/LuisMaGit/flutter-crypto',
      ),
    ],
  ),
  ProjectModel(
    backgroundColor: Color(0xFF33C2A3),
    colorShadowPic: Color(0xFF038166),
    textColor: Color(0xFFB8EFE3),
    cardText: 'Palabri',
    logo: PSVGIcons.wordle,
    title: 'Five Words Puzzle Game in Spanish',
    description:
        'Native Android (Kotlin/JetpackCompose) game, offline, with thousands of words, a new puzzle every day.',
    srcLighPic: PProjectsPics.wordleLight,
    srcDarkPic: PProjectsPics.wordleDark,
    mainLink:
        'https://github.com/LuisMaGit/jetpackcompose-wordle/blob/main/README.md',
    buttons: [
      ProjectButton(
        type: ProjectButtonType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=com.luisma.palabri&hl=en&gl=US',
      ),
      ProjectButton(
        type: ProjectButtonType.github,
        link: 'https://github.com/LuisMaGit/jetpackcompose-wordle',
      ),
    ],
  ),
  ProjectModel(
    backgroundColor: Color(0xFFF48FB1),
    colorShadowPic: Color(0xFFB06780),
    textColor: Color(0xFFF8E7ED),
    cardText: 'Swift Notes',
    title: 'Offline Notes App',
    description:
        'Native Multi-Modular iOS (Swift/SwiftUI) app made to test/explore the SQLite3 C APIs.',
    srcLighPic: PProjectsPics.notesLigh,
    srcDarkPic: PProjectsPics.notesDark,
    mainLink: 'https://github.com/LuisMaGit/swiftui-notes/blob/main/README.md',
    buttons: [
      ProjectButton(
        type: ProjectButtonType.github,
        link: 'https://github.com/LuisMaGit/flutter-crypto',
      ),
    ],
  ),
];
