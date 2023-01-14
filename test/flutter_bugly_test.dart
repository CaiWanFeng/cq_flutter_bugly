import 'package:flutter_bugly/flutter_bugly_method_channel.dart';
import 'package:flutter_bugly/flutter_bugly_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBuglyPlatform
    with MockPlatformInterfaceMixin
    implements FlutterBuglyPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  void setUp(String appID) {
    // TODO: implement setUp
  }
}

void main() {
  final FlutterBuglyPlatform initialPlatform = FlutterBuglyPlatform.instance;

  test('$MethodChannelFlutterBugly is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBugly>());
  });

  test('getPlatformVersion', () async {
    MockFlutterBuglyPlatform fakePlatform = MockFlutterBuglyPlatform();
    FlutterBuglyPlatform.instance = fakePlatform;
  });
}
