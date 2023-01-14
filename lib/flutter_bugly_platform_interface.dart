import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_bugly_method_channel.dart';

abstract class FlutterBuglyPlatform extends PlatformInterface {
  /// Constructs a FlutterBuglyPlatform.
  FlutterBuglyPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBuglyPlatform _instance = MethodChannelFlutterBugly();

  /// The default instance of [FlutterBuglyPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBugly].
  static FlutterBuglyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBuglyPlatform] when
  /// they register themselves.
  static set instance(FlutterBuglyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void setUp(String appID) {}
}
