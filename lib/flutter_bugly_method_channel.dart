import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_bugly_platform_interface.dart';

/// An implementation of [FlutterBuglyPlatform] that uses method channels.
class MethodChannelFlutterBugly extends FlutterBuglyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_bugly');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  void setUp(String appID) {
    methodChannel.invokeMethod('setUp', appID);
  }
}
