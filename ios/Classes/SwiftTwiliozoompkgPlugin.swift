import Flutter
import UIKit

public class SwiftTwiliozoompkgPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "twiliozoompkg", binaryMessenger: registrar.messenger())
    let instance = SwiftTwiliozoompkgPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    print("Native Method Fired")
    switch call.method {
        case "connectTwilio":
          let object = Twilio()
          result(object.connectTwilio())
        case "connectZoom":
          let object = Zoom()
          result(object.connectZoom())
        default:
          result(FlutterMethodNotImplemented)
        }
    }
}
