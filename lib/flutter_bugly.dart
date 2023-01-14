import 'package:flutter_bugly/flutter_bugly_platform_interface.dart';

class FlutterBugly {
  static void setUp(String appID) {
    FlutterBuglyPlatform.instance.setUp(appID);
  }
}
