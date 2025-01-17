import 'package:url_launcher/url_launcher_string.dart';

abstract class UrlLauncherService {
  static Future<void> launch(String url) async {
    await launchUrlString(url);
  }
}
