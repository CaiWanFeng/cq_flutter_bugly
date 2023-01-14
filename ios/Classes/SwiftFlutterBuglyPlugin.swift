import Flutter
import UIKit

public class SwiftFlutterBuglyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_bugly", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterBuglyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "setUp":
            setUp(call: call, result: result)
        default:
            result(FlutterMethodNotImplemented)
         }
  }

  // 方法有参数
  private func setUp(call: FlutterMethodCall, result: FlutterResult) {
      // 获取传入的参数
      let appID = call.arguments as! String
      let alert = UIAlertView.init(title: "setUp bugly", message: appID, delegate: nil, cancelButtonTitle: "ok")
      alert.show()
      // 通知结束
      result(nil)
    }
}
