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
      result("Connected to Twilio.")
    case "connectZoom":
      result("Connected to Zoom.")
    default:
      result(FlutterMethodNotImplemented)
    } 
  }
}