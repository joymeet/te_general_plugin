import Flutter
import UIKit

public class TeGeneralPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "te_general_plugin", binaryMessenger: registrar.messenger())
    let instance = TeGeneralPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getCurr":
      result(self.isCurrentRegionChina())
    case "getcnLang":
      result(self.getChinaLanguage())
    case "getTimeZ":
      result(TimeZone.current.identifier)
    case "getIDFV":
      result(UIDevice.current.identifierForVendor?.uuidString)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  func isCurrentRegionChina() -> Bool {
    let currentRegionCode = Locale.current.regionCode
    return currentRegionCode == "CN" || currentRegionCode == "HK" || currentRegionCode == "TW"
      || currentRegionCode == "MO"
  }

  func getChinaLanguage() -> Bool {
    let preferredLanguages = Locale.preferredLanguages
    guard let firstLanguage = preferredLanguages.first else {
      return false
    }
    return firstLanguage.lowercased().hasPrefix("zh")
  }
}
